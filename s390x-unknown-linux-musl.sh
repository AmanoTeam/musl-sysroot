#!/bin/bash

declare packages=(
	'https://dl-3.alpinelinux.org/alpine/edge/main/s390x/musl-1.2.5-r14.apk'
	'https://dl-3.alpinelinux.org/alpine/edge/main/s390x/musl-dev-1.2.5-r14.apk'
	'https://dl-3.alpinelinux.org/alpine/edge/main/s390x/linux-headers-6.15.7-r0.apk'
)

declare triplet='s390x-unknown-linux-musl'

declare ld='ld-musl-s390x.so.1'

declare sysroot='https://dl-cdn.alpinelinux.org/alpine/edge/releases/s390x/alpine-minirootfs-3.22.0-s390x.tar.gz'

declare os='alpine'
