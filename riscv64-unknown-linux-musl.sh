#!/bin/bash

declare packages=(
	'https://web.archive.org/web/0if_/https://dl-3.alpinelinux.org/alpine/edge/main/riscv64/musl-1.2.4-r0.apk'
	'https://web.archive.org/web/0if_/https://dl-3.alpinelinux.org/alpine/edge/main/riscv64/musl-dev-1.2.4-r0.apk'
	'https://web.archive.org/web/0if_/https://dl-3.alpinelinux.org/alpine/edge/main/riscv64/linux-headers-6.3-r0.apk'
)

declare triplet='riscv64-unknown-linux-musl'

declare ld='ld-musl-riscv64.so.1'

declare sysroot='https://web.archive.org/web/0if_/https://dl-cdn.alpinelinux.org/alpine/edge/releases/riscv64/alpine-minirootfs-3.17.0-riscv64.tar.gz'

declare os='alpine'
