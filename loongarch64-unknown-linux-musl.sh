#!/bin/bash

declare packages=(
	'https://dl-3.alpinelinux.org/alpine/edge/main/loongarch64/musl-1.2.5-r14.apk'
	'https://dl-3.alpinelinux.org/alpine/edge/main/loongarch64/musl-dev-1.2.5-r14.apk'
	'https://dl-3.alpinelinux.org/alpine/edge/main/loongarch64/linux-headers-6.15.7-r0.apk'
)

declare triplet='loongarch64-unknown-linux-musl'

declare ld='ld-musl-loongarch64.so.1'

declare sysroot='https://dl-cdn.alpinelinux.org/alpine/edge/releases/loongarch64/alpine-minirootfs-3.22.0-loongarch64.tar.gz'

declare os='alpine'
