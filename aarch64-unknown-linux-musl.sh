#!/bin/bash

declare packages=(
	'https://repo-default.voidlinux.org/current/aarch64/musl-1.2.5_2.aarch64-musl.xbps'
	'https://repo-default.voidlinux.org/current/aarch64/musl-devel-1.2.5_2.aarch64-musl.xbps'
	'https://repo-default.voidlinux.org/current/aarch64/kernel-libc-headers-6.14_1.aarch64-musl.xbps'
	'https://repo-default.voidlinux.org/current/aarch64/libexecinfo-devel-1.1_3.aarch64-musl.xbps'
)

declare triplet='aarch64-unknown-linux-musl'

declare ld='ld-musl-aarch64.so.1'

declare sysroot='https://repo-default.voidlinux.org/live/current/void-aarch64-musl-ROOTFS-20250202.tar.xz'

declare os='void'
