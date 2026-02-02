#!/bin/bash

declare packages=(
	'https://dl-cdn.alpinelinux.org/alpine/edge/main/armv7/musl-1.2.5-r21.apk'
	'https://dl-cdn.alpinelinux.org/alpine/edge/main/armv7/musl-dev-1.2.5-r21.apk'
	'https://dl-cdn.alpinelinux.org/alpine/edge/main/armv7/linux-headers-6.18.8-r0.apk'
)

declare triplet='armv7-unknown-linux-musleabihf'

declare ld='ld-musl-armhf.so.1'

declare sysroot='https://dl-cdn.alpinelinux.org/alpine/edge/releases/armv7/alpine-minirootfs-3.23.0-armv7.tar.gz'

declare os='alpine'
