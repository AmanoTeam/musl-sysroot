#!/bin/bash

declare packages=(
	'https://dl-3.alpinelinux.org/alpine/edge/main/riscv64/musl-1.2.5-r14.apk'
	'https://dl-3.alpinelinux.org/alpine/edge/main/riscv64/musl-dev-1.2.5-r14.apk'
	'https://dl-3.alpinelinux.org/alpine/edge/main/riscv64/linux-headers-6.15.6-r0.apk'
)

declare triplet='riscv64-unknown-linux-musl'

declare ld='ld-musl-riscv64.so.1'

declare sysroot='https://dl-cdn.alpinelinux.org/alpine/edge/releases/riscv64/alpine-minirootfs-3.22.0-riscv64.tar.gz'

declare os='alpine'
