#!/bin/bash

declare packages=(
	'https://repo-default.voidlinux.org/current/musl/musl-1.2.5_2.x86_64-musl.xbps'
	'https://repo-default.voidlinux.org/current/musl/musl-devel-1.2.5_2.x86_64-musl.xbps'
	'https://repo-default.voidlinux.org/current/musl/kernel-libc-headers-6.14_1.x86_64-musl.xbps'
	'https://repo-default.voidlinux.org/current/musl/libexecinfo-devel-1.1_3.x86_64-musl.xbps'
)

declare triplet='x86_64-unknown-linux-musl'

declare ld='ld-musl-x86_64.so.1'

declare sysroot='https://repo-default.voidlinux.org/live/current/void-x86_64-musl-ROOTFS-20250202.tar.xz'

declare os='void'
