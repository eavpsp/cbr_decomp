#!/usr/bin/env python3

###
# Runs REA (Reverse Engineer Anything, npm package "rea-agents", MIT,
# https://github.com/morluto/rea) with its Ghidra provider on the ELF that dtk
# writes to build/<version>/<version>.elf. Optional: nothing else in this
# repository needs it.
#
# REA adds Ghidra's view of a function next to tools/decomp_func.py (m2c):
# decompiled pseudo-C, cross-references, call graph and evidence records,
# from the command line or over MCP (for an agent such as Claude Code).
#
# Why Docker: REA only analyses a PowerPC ELF on Linux or macOS (REA docs:
# "ghidra-ppc.md"); on Windows it only accepts PE and raw 6502 files through
# Ghidra (REA docs: "windows-ghidra-p0.md"). The image (tools/rea/Dockerfile)
# holds JDK 21, Node.js and REA; your own Ghidra install is mounted read-only.
# On Linux/macOS, --native runs a local "rea" instead.
#
# Usage (from decomp_dtk_main, after `python configure.py && ninja`):
#   python3 tools/rea_ghidra.py prepare
#   python3 tools/rea_ghidra.py image
#   python3 tools/rea_ghidra.py run --ghidra PATH -- analyze {elf} --provider ghidra --json
#   python3 tools/rea_ghidra.py run --ghidra PATH -- function {elf} ParseStageData__5CGameFiPc --provider ghidra --json
#   python3 tools/rea_ghidra.py mcp --ghidra PATH          # MCP server over stdio
#   python3 tools/rea_ghidra.py mcp-config --ghidra PATH   # prints a .mcp.json snippet
#
# Commands:
#   prepare      copy the ELF to build/<version>/rea/<version>.elf with the
#                EF_PPC_EMB flag cleared (see prepare_elf); skipped when the
#                copy is up to date
#   image        build the Docker image rea-ghidra:<REA version>
#   run -- ARGS  run "rea ARGS" on the prepared ELF; "{elf}" in ARGS is
#                replaced by its path (inside the container: /work/<name>)
#   mcp          run "rea mcp" (MCP server over stdio) with the prepared ELF
#                at /work/<name>; one Ghidra session stays open, so only the
#                first request pays the ~2 min import
#   mcp-config   print a ready "mcpServers" entry for this machine
#
# Options:
#   --ghidra PATH     Ghidra install folder (default: $GHIDRA_INSTALL_DIR)
#   --version GAMEID  game version (default: GGTE01)
#   --elf FILE        source ELF (default: build/<version>/<version>.elf)
#   --native          run a local "rea" instead of Docker (Linux/macOS only)
#   --force           (prepare) rewrite the copy even if it is up to date
#   --no-cache        (image) build without the Docker cache
#
# Language: when the Ghidra install provides the PowerPC:BE:32:Gekko_Broadway
# language (GameCubeLoader extension, which decodes paired singles), it is
# passed to REA with REA_GHIDRA_LANGUAGE_ID; otherwise REA uses its default
# (PowerPC:BE:32:default) and this tool warns. An REA_GHIDRA_LANGUAGE_ID
# already set in the environment wins.
#
# Known limits: small-data accesses (r2/r13) appear as "unaff_r2 + offset"
# (the ELF path sets no register value); every CLI call imports the ELF again
# (~2 min), use "mcp" to keep a session.
#
# The ELF, its copy and every REA output are derived from the game: keep them
# out of Git (build/ is ignored). This tool stores no game data.
#
# Python standard library only. Released under CC0 1.0.
###

import argparse
import json
import os
import re
import shutil
import struct
import subprocess
import sys
import uuid
from pathlib import Path
from typing import List, Optional

ROOT_DIR = Path(__file__).resolve().parent.parent
DOCKERFILE_DIR = ROOT_DIR / "tools" / "rea"

IMAGE_NAME = "rea-ghidra"
GEKKO_LANGUAGE_ID = "PowerPC:BE:32:Gekko_Broadway"
ELF_PLACEHOLDER = "{elf}"
CONTAINER_GHIDRA = "/opt/ghidra"
CONTAINER_WORK = "/work"

# ELF header fields (ELF32), from the System V ABI / Linux elf.h.
ELF_MAGIC = b"\x7fELF"
ELFCLASS32 = 1
ELFDATA2MSB = 2
ET_EXEC = 2
EM_PPC = 20
E_FLAGS_OFFSET = 36  # e_ident[16], e_type, e_machine, e_version, e_entry, e_phoff, e_shoff
EF_PPC_EMB = 0x80000000


class ToolError(Exception):
    pass


def log(msg: str) -> None:
    # Always stderr: in "mcp" mode stdout is the MCP channel.
    print(msg, file=sys.stderr)


# --- prepare -----------------------------------------------------------------


def check_elf_header(data: bytes, path: Path) -> int:
    """Returns e_flags after checking this is a big-endian ELF32 PowerPC executable."""
    if len(data) < 52 or data[:4] != ELF_MAGIC:
        raise ToolError(f"{path}: not an ELF file")
    if data[4] != ELFCLASS32:
        raise ToolError(f"{path}: not a 32-bit ELF (EI_CLASS={data[4]})")
    if data[5] != ELFDATA2MSB:
        raise ToolError(f"{path}: not a big-endian ELF (EI_DATA={data[5]})")
    e_type, e_machine = struct.unpack_from(">HH", data, 16)
    if e_type != ET_EXEC:
        raise ToolError(f"{path}: not an executable ELF (e_type={e_type}, expected ET_EXEC=2)")
    if e_machine != EM_PPC:
        raise ToolError(f"{path}: not a PowerPC ELF (e_machine={e_machine}, expected EM_PPC=20)")
    return struct.unpack_from(">I", data, E_FLAGS_OFFSET)[0]


def prepare_elf(src: Path, dst: Path, force: bool = False) -> Path:
    """Writes dst, a copy of src with the EF_PPC_EMB bit of e_flags cleared.

    dtk sets e_flags = EF_PPC_EMB (0x80000000, "PowerPC embedded"). REA's
    PowerPC ELF path refuses that flag (architecture_unsupported) and accepts
    the file once it is cleared; the other e_flags bits only describe
    relocations (REA docs: "ghidra-ppc.md"). The flag has no effect on the
    Gekko code itself, and the copy is only read by REA: the build keeps using
    the original ELF.
    """
    if not src.is_file():
        raise ToolError(f"{src} not found: build it first, from decomp_dtk_main: "
                        "`python configure.py` then `ninja`")
    data = bytearray(src.read_bytes())
    flags = check_elf_header(data, src)
    struct.pack_into(">I", data, E_FLAGS_OFFSET, flags & ~EF_PPC_EMB)
    if not force and dst.is_file() and dst.read_bytes() == data:
        log(f"prepare: {dst} is up to date")
        return dst
    dst.parent.mkdir(parents=True, exist_ok=True)
    tmp = dst.with_name(dst.name + ".tmp")
    tmp.write_bytes(data)
    os.replace(tmp, dst)
    log(f"prepare: wrote {dst} (e_flags 0x{flags:08X} -> 0x{flags & ~EF_PPC_EMB:08X})")
    return dst


def elf_paths(args: argparse.Namespace):
    if args.elf:
        src = Path(args.elf).resolve()
    else:
        src = ROOT_DIR / "build" / args.version / f"{args.version}.elf"
    dst = ROOT_DIR / "build" / args.version / "rea" / (src.stem + ".elf")
    if src.resolve() == dst.resolve():
        raise ToolError(f"{src} is already the prepared copy; pass the original ELF")
    return src, dst


# --- Ghidra ------------------------------------------------------------------


def ghidra_dir(args: argparse.Namespace) -> Path:
    raw = args.ghidra or os.environ.get("GHIDRA_INSTALL_DIR")
    if not raw:
        raise ToolError("no Ghidra install: pass --ghidra PATH or set GHIDRA_INSTALL_DIR")
    path = Path(raw).resolve()
    props = path / "Ghidra" / "application.properties"
    if not props.is_file():
        raise ToolError(f"{path} is not a Ghidra install folder ({props} not found)")
    match = re.search(r"^application\.version=(\S+)", props.read_text(encoding="utf-8", errors="replace"), re.M)
    version = match.group(1) if match else "unknown"
    if not version.startswith("12.1."):
        log(f"warning: Ghidra {version}; REA was tested here with Ghidra 12.1.x")
    return path


def ghidra_has_language(ghidra: Path, language_id: str) -> bool:
    """Looks for language_id in the .ldefs of the install's processors and extensions.

    Only extensions installed inside the Ghidra folder (Ghidra/Extensions) are
    seen; extensions installed in the user settings folder are not, and they
    are not visible inside the container anyway.
    """
    needle = f'id="{language_id}"'
    patterns = ["Ghidra/Processors/*/data/languages/*.ldefs",
                "Ghidra/Extensions/*/data/languages/*.ldefs"]
    for pattern in patterns:
        for ldefs in ghidra.glob(pattern):
            try:
                if needle in ldefs.read_text(encoding="utf-8", errors="replace"):
                    return True
            except OSError:
                continue
    return False


def rea_env(ghidra: Path) -> dict:
    """Environment variables passed to REA (values are for both modes)."""
    env = {}
    if os.environ.get("REA_GHIDRA_LANGUAGE_ID"):
        env["REA_GHIDRA_LANGUAGE_ID"] = os.environ["REA_GHIDRA_LANGUAGE_ID"]
    elif ghidra_has_language(ghidra, GEKKO_LANGUAGE_ID):
        env["REA_GHIDRA_LANGUAGE_ID"] = GEKKO_LANGUAGE_ID
    else:
        log(f"warning: {GEKKO_LANGUAGE_ID} not found in {ghidra}; REA uses its default "
            "PowerPC language (paired-single instructions are not decoded). Install the "
            "GameCubeLoader extension into Ghidra/Extensions to get it.")
    return env


# --- Docker ------------------------------------------------------------------


def rea_version() -> str:
    dockerfile = DOCKERFILE_DIR / "Dockerfile"
    match = re.search(r"^ARG REA_VERSION=(\S+)", dockerfile.read_text(encoding="utf-8"), re.M)
    if not match:
        raise ToolError(f"ARG REA_VERSION not found in {dockerfile}")
    return match.group(1)


def image_tag() -> str:
    return f"{IMAGE_NAME}:{rea_version()}"


def docker_exe() -> str:
    exe = shutil.which("docker")
    if not exe:
        raise ToolError("docker not found: install Docker Desktop (Windows, macOS) or Docker Engine "
                        "(Linux), or use --native with a local rea on Linux/macOS")
    probe = subprocess.run([exe, "info", "--format", "{{.ServerVersion}}"],
                           stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
    if probe.returncode != 0 or not probe.stdout.strip():
        detail = (probe.stderr or probe.stdout).strip().splitlines()
        raise ToolError("the Docker engine is not reachable (start Docker Desktop, or the docker "
                        "service): " + (detail[-1] if detail else f"exit code {probe.returncode}"))
    return exe


def require_image(docker: str, tag: str) -> None:
    probe = subprocess.run([docker, "image", "inspect", tag],
                           stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    if probe.returncode != 0:
        raise ToolError(f"Docker image {tag} not found: run `python tools/rea_ghidra.py image` first")


def bind_mount(source: Path, target: str) -> List[str]:
    # --mount rather than -v: -v splits its value on ":", which is ambiguous
    # with a Windows drive letter; --mount names each field (Docker docs:
    # "Bind mounts"). Its value is read as CSV, so a field holding a comma or
    # a quote is quoted. The path is one argv element: spaces need nothing.
    src = f"source={source}"
    if "," in src or '"' in src:
        src = '"' + src.replace('"', '""') + '"'
    return ["--mount", f"type=bind,{src},target={target},readonly"]


def docker_command(docker: str, ghidra: Path, elf: Path, env: dict, rea_args: List[str],
                   interactive: bool) -> List[str]:
    name = f"rea-ghidra-{uuid.uuid4().hex[:12]}"
    cmd = [docker, "run", "--rm", "--init", "--name", name,
           # The analysis is local: no network inside the container.
           "--network", "none"]
    if interactive:
        cmd.append("-i")
    cmd += bind_mount(ghidra, CONTAINER_GHIDRA)
    cmd += bind_mount(elf.parent, CONTAINER_WORK)
    cmd += ["-e", f"GHIDRA_INSTALL_DIR={CONTAINER_GHIDRA}"]
    for key, value in env.items():
        cmd += ["-e", f"{key}={value}"]
    cmd += [image_tag(), "rea"] + rea_args
    log(f"container: {name}")
    return cmd


# --- commands ----------------------------------------------------------------


def cmd_prepare(args: argparse.Namespace) -> int:
    src, dst = elf_paths(args)
    prepare_elf(src, dst, force=args.force)
    print(dst)
    return 0


def cmd_image(args: argparse.Namespace) -> int:
    docker = docker_exe()
    # The build context is tools/rea only: the project folder holds orig/
    # (game files), which must never be sent to the Docker daemon.
    cmd = [docker, "build", "-t", image_tag()]
    if args.no_cache:
        cmd.append("--no-cache")
    cmd.append(str(DOCKERFILE_DIR))
    log("$ " + " ".join(cmd))
    return subprocess.run(cmd).returncode


def native_rea() -> str:
    if sys.platform == "win32":
        raise ToolError("--native is not available on Windows: REA does not analyse PowerPC there "
                        "(REA docs: \"windows-ghidra-p0.md\"); use Docker (default)")
    exe = shutil.which("rea")
    if not exe:
        raise ToolError("rea not found on the PATH: `npm install -g rea-agents` (Node >= 22.19), "
                        "or use Docker (default)")
    return exe


def run_rea(args: argparse.Namespace, rea_args: List[str], interactive: bool) -> int:
    exe = native_rea() if args.native else None
    ghidra = ghidra_dir(args)
    src, dst = elf_paths(args)
    elf = prepare_elf(src, dst)
    env = rea_env(ghidra)
    if exe:
        rea_args = [a.replace(ELF_PLACEHOLDER, str(elf)) for a in rea_args]
        full_env = dict(os.environ, GHIDRA_INSTALL_DIR=str(ghidra), **env)
        if interactive:
            log(f"MCP server: the ELF is {elf}")
        return subprocess.run([exe] + rea_args, env=full_env).returncode
    docker = docker_exe()
    require_image(docker, image_tag())
    container_elf = f"{CONTAINER_WORK}/{elf.name}"
    rea_args = [a.replace(ELF_PLACEHOLDER, container_elf) for a in rea_args]
    if interactive:
        log(f"MCP server: the ELF is {container_elf} (read-only)")
    cmd = docker_command(docker, ghidra, elf, env, rea_args, interactive)
    try:
        return subprocess.run(cmd).returncode
    except KeyboardInterrupt:
        return 130


def cmd_run(args: argparse.Namespace) -> int:
    rea_args = list(args.rea_args)
    if rea_args and rea_args[0] == "--":
        rea_args = rea_args[1:]
    if not rea_args:
        raise ToolError("nothing to run: pass REA arguments after --, e.g. "
                        "`run -- analyze {elf} --provider ghidra --json`")
    if not any(ELF_PLACEHOLDER in a for a in rea_args):
        log(f"note: no {ELF_PLACEHOLDER} in the REA arguments")
    return run_rea(args, rea_args, interactive=False)


def cmd_mcp(args: argparse.Namespace) -> int:
    return run_rea(args, ["mcp"], interactive=True)


def cmd_mcp_config(args: argparse.Namespace) -> int:
    ghidra = ghidra_dir(args)
    server_args = [str(Path(__file__).resolve()), "mcp", "--ghidra", str(ghidra),
                   "--version", args.version]
    if args.elf:
        server_args += ["--elf", str(Path(args.elf).resolve())]
    if args.native:
        server_args.append("--native")
    snippet = {"mcpServers": {"rea": {"command": sys.executable, "args": server_args}}}
    print(json.dumps(snippet, indent=2))
    log("Add this to .mcp.json (Claude Code) or to your MCP client's configuration. "
        "Build the ELF and the image first.")
    return 0


def main(argv: Optional[List[str]] = None) -> int:
    common = argparse.ArgumentParser(add_help=False)
    common.add_argument("--version", default="GGTE01", help="game version (default: GGTE01)")
    common.add_argument("--elf", help="source ELF (default: build/<version>/<version>.elf)")
    common.add_argument("--ghidra", help="Ghidra install folder (default: $GHIDRA_INSTALL_DIR)")
    common.add_argument("--native", action="store_true",
                        help="run a local rea instead of Docker (Linux/macOS only)")

    parser = argparse.ArgumentParser(
        description="Run REA (Ghidra provider) on the dtk ELF, through Docker or a local rea.")
    sub = parser.add_subparsers(dest="command", required=True)

    p = sub.add_parser("prepare", parents=[common], help="copy the ELF with EF_PPC_EMB cleared")
    p.add_argument("--force", action="store_true", help="rewrite the copy even if up to date")
    p.set_defaults(func=cmd_prepare)

    p = sub.add_parser("image", parents=[common], help="build the Docker image")
    p.add_argument("--no-cache", action="store_true", help="build without the Docker cache")
    p.set_defaults(func=cmd_image)

    p = sub.add_parser("run", parents=[common], help="run a REA command ({elf} = the prepared ELF)")
    p.add_argument("rea_args", nargs=argparse.REMAINDER, help="-- then the REA arguments")
    p.set_defaults(func=cmd_run)

    p = sub.add_parser("mcp", parents=[common], help="run the REA MCP server over stdio")
    p.set_defaults(func=cmd_mcp)

    p = sub.add_parser("mcp-config", parents=[common], help="print an mcpServers entry")
    p.set_defaults(func=cmd_mcp_config)

    args = parser.parse_args(argv)
    try:
        return args.func(args)
    except ToolError as err:
        log(f"error: {err}")
        return 1


if __name__ == "__main__":
    sys.exit(main())
