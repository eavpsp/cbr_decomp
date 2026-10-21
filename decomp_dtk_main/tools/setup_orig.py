#!/usr/bin/env python3

###
# Fills orig/<GAMEID> from your own copy of the game, in one command.
#
# Writes sys/main.dol and every rel/*.rel module found inside files/qp.bin
# (a U8 archive) to RELS/rel/, which is the layout config/<GAMEID>/config.yml
# expects. main.dol is checked against the known SHA-1 of the version.
#
# Input is either:
#   - a plain 1:1 GameCube disc image (.iso / .gcm). Compressed or trimmed
#     formats (RVZ, WIA, GCZ, WBFS, CISO, NKit, archives) are refused: convert
#     them to ISO first with Dolphin (right-click the game > Convert File...).
#   - a disc already extracted with Dolphin (a folder holding sys/main.dol and
#     files/qp.bin).
#
# Usage:
#   python3 tools/setup_orig.py path/to/game.iso
#   python3 tools/setup_orig.py path/to/extracted_disc --version GGTE01
#   python3 tools/setup_orig.py game.iso --out some/dir --force
#
# Options:
#   --version GAMEID  version to set up (default: GGTE01, the only one supported)
#   --out DIR         output folder (default: orig/<GAMEID> in the project root)
#   --force           overwrite files that already exist
#
# Python standard library only. No game data is stored in this script, only
# the SHA-1 of each supported main.dol.
###

import argparse
import hashlib
import os
import re
import struct
import sys
from pathlib import Path
from typing import BinaryIO, Dict, List, Optional, Tuple

ROOT_DIR = Path(__file__).resolve().parent.parent

# SHA-1 of the main.dol of each supported version.
KNOWN_DOL_SHA1 = {
    "GGTE01": "103c68e107b691d905306ecb6bbc43ea44893157",  # USA, Rev 0
}

CHUNK_SIZE = 1 << 20

GC_DISC_MAGIC = 0xC2339F3D  # at 0x1C in every GameCube disc header
WII_DISC_MAGIC = 0x5D1C9EA3  # at 0x18 in every Wii disc header
GC_DISC_SIZE = 0x57058000  # size of a full 1:1 GameCube disc image
U8_MAGIC = 0x55AA382D
DOL_HEADER_SIZE = 0x100
DOL_SECTION_COUNT = 18  # 7 text + 11 data

# Leading bytes of container formats that are not plain disc images.
FOREIGN_MAGICS = [
    (b"RVZ\x01", "an RVZ image"),
    (b"WIA\x01", "a WIA image"),
    (b"\x01\xc0\x0b\xb1", "a GCZ image"),
    (b"WBFS", "a WBFS image"),
    (b"CISO", "a CISO image"),
    (b"\xae\x0f\x38\xa2", "a TGC image"),
    (b"PK\x03\x04", "a ZIP archive"),
    (b"7z\xbc\xaf\x27\x1c", "a 7-Zip archive"),
    (b"Rar!", "a RAR archive"),
]

CONVERT_HINT = (
    "Convert it to a plain ISO with Dolphin (right-click the game in the list > "
    "Convert File..., format ISO), or extract the archive first, then run this "
    "tool again."
)


class SetupError(Exception):
    pass


def be32(data: bytes, offset: int) -> int:
    return struct.unpack_from(">I", data, offset)[0]


def read_exact(f: BinaryIO, offset: int, size: int, what: str) -> bytes:
    f.seek(offset)
    data = f.read(size)
    if len(data) != size:
        raise SetupError(
            f"Unexpected end of file while reading {what} "
            f"(offset 0x{offset:X}, size 0x{size:X}). "
            "The image or file looks truncated or trimmed."
        )
    return data


def copy_range(
    src: BinaryIO,
    offset: int,
    size: int,
    dst_path: Path,
    what: str,
    hasher: Optional["hashlib._Hash"] = None,
) -> None:
    """Streams size bytes at offset in src to dst_path.tmp (renamed by the caller)."""
    src.seek(offset)
    remaining = size
    with open(dst_path, "wb") as out:
        while remaining > 0:
            chunk = src.read(min(CHUNK_SIZE, remaining))
            if not chunk:
                raise SetupError(
                    f"Unexpected end of file while copying {what}. "
                    "The image or file looks truncated or trimmed."
                )
            if hasher is not None:
                hasher.update(chunk)
            out.write(chunk)
            remaining -= len(chunk)


def walk_node_table(
    table: bytes, count: int, names: bytes, what: str
) -> List[Tuple[str, int, int]]:
    """Walks a GameCube FST or U8 node table (same 12-byte node layout).

    Each node: u8 type (0 file, 1 directory), u24 name offset, u32 data offset
    (file) or parent index (directory), u32 size (file) or index one past the
    directory's last child (directory). Node 0 is the root.
    Returns (path, data offset, size) for every file, '/' separated.
    """
    files = []
    stack: List[Tuple[int, str]] = [(count, "")]  # (end index, path prefix)
    for i in range(1, count):
        while stack and i >= stack[-1][0]:
            stack.pop()
        if not stack:
            raise SetupError(f"Corrupt {what}: node {i} is outside the root.")
        word0, field1, field2 = struct.unpack_from(">III", table, i * 12)
        is_dir = (word0 >> 24) != 0
        name_off = word0 & 0xFFFFFF
        end = names.find(b"\0", name_off)
        if name_off >= len(names) or end < 0:
            raise SetupError(f"Corrupt {what}: bad name for node {i}.")
        name = names[name_off:end].decode("shift_jis", errors="replace")
        prefix = stack[-1][1]
        if is_dir:
            if field2 <= i or field2 > count:
                raise SetupError(f"Corrupt {what}: bad directory node {i}.")
            # Some U8 archives wrap everything in a "." directory.
            stack.append((field2, prefix if name in ("", ".") else prefix + name + "/"))
        else:
            files.append((prefix + name, field1, field2))
    return files


def read_node_table(f: BinaryIO, offset: int, max_size: int, what: str) -> Tuple[bytes, int, bytes]:
    root = read_exact(f, offset, 12, what)
    if root[0] != 1:
        raise SetupError(f"Corrupt {what}: the root node is not a directory.")
    count = be32(root, 8)
    if count == 0 or count * 12 > max_size:
        raise SetupError(f"Corrupt {what}: bad node count {count}.")
    blob = read_exact(f, offset, max_size, what)
    return blob[: count * 12], count, blob[count * 12 :]


def dol_size(header: bytes) -> int:
    """Size of a DOL file: the end of its furthest section (header is 0x100 bytes)."""
    size = DOL_HEADER_SIZE
    for i in range(DOL_SECTION_COUNT):
        offset = be32(header, i * 4)
        length = be32(header, 0x90 + i * 4)
        if offset and length:
            size = max(size, offset + length)
    return size


def find_qp_bin(files: List[Tuple[str, int, int]], what: str) -> Tuple[str, int, int]:
    root = [e for e in files if e[0].lower() == "qp.bin"]
    if root:
        return root[0]
    anywhere = [e for e in files if e[0].lower().rsplit("/", 1)[-1] == "qp.bin"]
    if len(anywhere) == 1:
        return anywhere[0]
    if not anywhere:
        raise SetupError(f"qp.bin was not found in {what}.")
    raise SetupError(f"Several qp.bin files found in {what}: " + ", ".join(e[0] for e in anywhere))


def list_u8_rels(f: BinaryIO, base: int, size: int) -> List[Tuple[str, int, int]]:
    """Returns (file name, absolute offset, size) for every rel/*.rel in the U8 archive at base."""
    header = read_exact(f, base, 0x10, "the qp.bin header")
    if be32(header, 0) != U8_MAGIC:
        raise SetupError("qp.bin is not a U8 archive (bad magic).")
    root_off, nodes_size = be32(header, 4), be32(header, 8)
    if root_off + nodes_size > size:
        raise SetupError("Corrupt qp.bin: node table outside the archive.")
    table, count, names = read_node_table(f, base + root_off, nodes_size, "qp.bin")
    rels = []
    seen: Dict[str, str] = {}
    for path, offset, length in walk_node_table(table, count, names, "qp.bin"):
        parts = path.split("/")
        if len(parts) < 2 or parts[-2].lower() != "rel" or not parts[-1].lower().endswith(".rel"):
            continue
        if offset + length > size:
            raise SetupError(f"Corrupt qp.bin: {path} lies outside the archive.")
        key = parts[-1].lower()
        if key in seen:
            raise SetupError(f"Two modules share the name {parts[-1]}: {seen[key]} and {path}.")
        seen[key] = path
        rels.append((parts[-1], base + offset, length))
    if not rels:
        raise SetupError("No rel/*.rel module found in qp.bin.")
    return rels


def expected_rels(version: str) -> List[str]:
    """Module file names listed in config/<version>/config.yml (empty if it is missing)."""
    config = ROOT_DIR / "config" / version / "config.yml"
    if not config.is_file():
        return []
    pattern = re.compile(r"^\s*-?\s*object:\s*orig/[^/]+/RELS/rel/(\S+\.rel)\s*$", re.IGNORECASE)
    names = []
    for line in config.read_text(encoding="utf-8").splitlines():
        m = pattern.match(line)
        if m:
            names.append(m.group(1))
    return names


class Job:
    """One file to write: size bytes at offset in a source opened from src_path."""

    def __init__(self, src_path: Path, offset: int, size: int, dst: Path, what: str):
        self.src_path, self.offset, self.size, self.dst, self.what = src_path, offset, size, dst, what


def check_image_format(path: Path, head: bytes) -> None:
    for magic, label in FOREIGN_MAGICS:
        if head.startswith(magic):
            raise SetupError(f"{path.name} is {label}, not a plain disc image. {CONVERT_HINT}")
    if len(head) >= 0x204 and head[0x200:0x204] == b"NKIT":
        raise SetupError(f"{path.name} is an NKit image, not a plain disc image. {CONVERT_HINT}")
    if len(head) >= 0x20 and be32(head, 0x18) == WII_DISC_MAGIC:
        raise SetupError(f"{path.name} is a Wii disc image, not a GameCube one.")
    if len(head) < 0x440 or be32(head, 0x1C) != GC_DISC_MAGIC:
        raise SetupError(f"{path.name} is not a plain GameCube disc image. {CONVERT_HINT}")


def check_game_id(game_id: str, version: str, where: str) -> None:
    if game_id != version:
        raise SetupError(
            f"{where} is game ID {game_id!r}, but version {version} was requested. "
            f"Supported versions: {', '.join(sorted(KNOWN_DOL_SHA1))}."
        )


def plan_from_image(image: Path, version: str, out: Path) -> Tuple[Job, List[Job]]:
    with open(image, "rb") as f:
        head = f.read(0x440)
        check_image_format(image, head)
        game_id = head[0:6].decode("ascii", errors="replace")
        check_game_id(game_id, version, image.name)
        file_size = os.fstat(f.fileno()).st_size
        if file_size != GC_DISC_SIZE:
            print(
                f"warning: {image.name} is {file_size} bytes, a full disc image is "
                f"{GC_DISC_SIZE}; continuing, the checks below will catch a bad dump.",
                file=sys.stderr,
            )
        dol_off, fst_off, fst_size = be32(head, 0x420), be32(head, 0x424), be32(head, 0x428)

        dol_header = read_exact(f, dol_off, DOL_HEADER_SIZE, "the main.dol header")
        dol_job = Job(image, dol_off, dol_size(dol_header), out / "sys" / "main.dol", "main.dol")

        table, count, names = read_node_table(f, fst_off, fst_size, "disc file table")
        files = walk_node_table(table, count, names, "disc file table")
        _, qp_off, qp_size = find_qp_bin(files, "the disc")
        rels = list_u8_rels(f, qp_off, qp_size)
    rel_jobs = [Job(image, off, size, out / "RELS" / "rel" / name, name) for name, off, size in rels]
    return dol_job, rel_jobs


def find_child(folder: Path, name: str) -> Optional[Path]:
    if not folder.is_dir():
        return None
    for child in folder.iterdir():
        if child.name.lower() == name.lower():
            return child
    return None


def plan_from_folder(folder: Path, version: str, out: Path) -> Tuple[Job, List[Job]]:
    sys_dir = find_child(folder, "sys")
    files_dir = find_child(folder, "files")
    dol = find_child(sys_dir, "main.dol") if sys_dir else None
    if dol is None or files_dir is None:
        raise SetupError(
            f"{folder} does not look like an extracted disc: expected sys/main.dol and "
            "files/qp.bin (Dolphin: right-click the game > Properties > Filesystem > "
            "right-click the disc > Extract Entire Disc...)."
        )
    boot = find_child(sys_dir, "boot.bin")
    if boot is not None and boot.is_file():
        with open(boot, "rb") as f:
            check_game_id(f.read(6).decode("ascii", errors="replace"), version, str(folder))

    qp = find_child(files_dir, "qp.bin")
    if qp is None or not qp.is_file():
        found = [p for p in files_dir.rglob("*") if p.is_file() and p.name.lower() == "qp.bin"]
        if len(found) != 1:
            raise SetupError(
                f"qp.bin was not found in {files_dir}." if not found
                else f"Several qp.bin files found in {files_dir}."
            )
        qp = found[0]

    dol_job = Job(dol, 0, dol.stat().st_size, out / "sys" / "main.dol", "main.dol")
    with open(qp, "rb") as f:
        rels = list_u8_rels(f, 0, qp.stat().st_size)
    rel_jobs = [Job(qp, off, size, out / "RELS" / "rel" / name, name) for name, off, size in rels]
    return dol_job, rel_jobs


def run_job(job: Job, expected_sha1: Optional[str] = None) -> None:
    job.dst.parent.mkdir(parents=True, exist_ok=True)
    tmp = job.dst.with_name(job.dst.name + ".tmp")
    hasher = hashlib.sha1() if expected_sha1 else None
    try:
        with open(job.src_path, "rb") as src:
            copy_range(src, job.offset, job.size, tmp, job.what, hasher)
        if hasher is not None and hasher.hexdigest() != expected_sha1:
            raise SetupError(
                f"{job.what} SHA-1 is {hasher.hexdigest()}, expected {expected_sha1}. "
                "This is not a supported, clean copy of the game (bad dump or another revision)."
            )
        os.replace(tmp, job.dst)
    finally:
        if tmp.exists():
            tmp.unlink()


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Fill orig/<GAMEID> (main.dol and the REL modules) from a GameCube "
        "disc image or an extracted disc."
    )
    parser.add_argument("source", type=Path, help="disc image (.iso/.gcm) or extracted disc folder")
    parser.add_argument("--version", default="GGTE01", help="game ID to set up (default: GGTE01)")
    parser.add_argument("--out", type=Path, help="output folder (default: orig/<GAMEID>)")
    parser.add_argument("--force", action="store_true", help="overwrite existing files")
    args = parser.parse_args()

    version = args.version.upper()
    out = args.out if args.out is not None else ROOT_DIR / "orig" / version
    try:
        if version not in KNOWN_DOL_SHA1:
            raise SetupError(
                f"Unsupported version {version}. Supported: {', '.join(sorted(KNOWN_DOL_SHA1))}."
            )
        source = args.source
        if source.is_dir():
            dol_job, rel_jobs = plan_from_folder(source, version, out)
        elif source.is_file():
            dol_job, rel_jobs = plan_from_image(source, version, out)
        else:
            raise SetupError(f"{source} does not exist.")

        found = {job.dst.name.lower() for job in rel_jobs}
        missing = [n for n in expected_rels(version) if n.lower() not in found]
        if missing:
            raise SetupError(
                f"Modules listed in config/{version}/config.yml are missing from qp.bin: "
                + ", ".join(missing)
            )

        jobs = [dol_job] + sorted(rel_jobs, key=lambda j: j.dst.name.lower())
        existing = [job.dst for job in jobs if job.dst.exists()]
        if existing and not args.force:
            raise SetupError(
                f"{len(existing)} file(s) already exist in {out} (for example "
                f"{existing[0]}). Nothing was written. Use --force to overwrite them."
            )

        run_job(dol_job, KNOWN_DOL_SHA1[version])
        print(f"wrote {dol_job.dst} ({dol_job.size} bytes, SHA-1 OK)")
        for job in jobs[1:]:
            run_job(job)
            print(f"wrote {job.dst} ({job.size} bytes)")
        print(f"Done: main.dol and {len(rel_jobs)} REL module(s) in {out}.")
        return 0
    except SetupError as e:
        print(f"error: {e}", file=sys.stderr)
        return 1
    except OSError as e:
        print(f"error: {e}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    sys.exit(main())
