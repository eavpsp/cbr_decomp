# Linux image to run REA (Reverse Engineer Anything, npm package "rea-agents",
# MIT, https://github.com/morluto/rea) with its Ghidra provider on the
# GameCube ELF written by dtk.
#
# Why Linux: REA on Windows only accepts PE (x86/x64/ARM) and raw 6502 files
# through Ghidra (REA docs: "windows-ghidra-p0.md"); the "PowerPC ELF through
# Ghidra" path (REA docs: "ghidra-ppc.md") is Linux/macOS only.
#
# Ghidra is NOT part of the image: mount your own install (Ghidra 12.1.x,
# ideally with the GameCubeLoader extension for the Gekko/Broadway language)
# read-only at /opt/ghidra. tools/rea_ghidra.py builds and runs this image:
#   python tools/rea_ghidra.py image
#   python tools/rea_ghidra.py run --ghidra PATH -- analyze {elf} --provider ghidra --json
#
# Contents, all versions pinned:
#   - eclipse-temurin:21-jdk-noble (Ubuntu 24.04 + JDK 21, required by Ghidra 12)
#   - procps (REA needs "ps" on Linux, REA docs: "installation.md")
#   - Node.js 22.23.3, official tarball checked against its published SHA-256
#     (rea-agents requires Node >= 22.19, "engines" field of its package.json)
#   - rea-agents (version below)
# Tested on linux/amd64. The arm64 checksum is the official one but that
# variant has not been tested.
#
# Released under CC0 1.0.

FROM eclipse-temurin:21-jdk-noble

ARG REA_VERSION=6.7.0
ARG NODE_VERSION=22.23.3
# From https://nodejs.org/dist/v22.23.3/SHASUMS256.txt
ARG NODE_SHA256_X64=df450af89261115ef9f9e3830c3eeb2cc9213b63c720b1af623cb5dcbe2e02de
ARG NODE_SHA256_ARM64=a44aeb94849a299b22df10b9e622ec2f605c2183501bc40590705131de7c740f
# Set by BuildKit (amd64 or arm64).
ARG TARGETARCH

RUN apt-get update \
 && apt-get install -y --no-install-recommends procps curl ca-certificates xz-utils \
 && rm -rf /var/lib/apt/lists/*

RUN set -eu; \
    case "${TARGETARCH:-amd64}" in \
      amd64) arch=x64; sum="${NODE_SHA256_X64}" ;; \
      arm64) arch=arm64; sum="${NODE_SHA256_ARM64}" ;; \
      *) echo "unsupported architecture: ${TARGETARCH}" >&2; exit 1 ;; \
    esac; \
    tarball="node-v${NODE_VERSION}-linux-${arch}.tar.xz"; \
    curl -fsSLo "/tmp/${tarball}" "https://nodejs.org/dist/v${NODE_VERSION}/${tarball}"; \
    echo "${sum}  /tmp/${tarball}" | sha256sum -c -; \
    tar -xJf "/tmp/${tarball}" -C /opt; \
    rm "/tmp/${tarball}"; \
    ln -s "/opt/node-v${NODE_VERSION}-linux-${arch}" /opt/node; \
    for tool in node npm npx; do ln -s "/opt/node/bin/${tool}" "/usr/local/bin/${tool}"; done

RUN npm install -g "rea-agents@${REA_VERSION}" \
 && ln -sf /opt/node/bin/rea /usr/local/bin/rea \
 && rea --version

ENV GHIDRA_INSTALL_DIR=/opt/ghidra
WORKDIR /work
