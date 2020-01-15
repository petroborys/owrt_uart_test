#!/bin/sh

set -ex

curl -SL https://downloads.openwrt.org/snapshots/targets/ar71xx/mikrotik/openwrt-sdk-ar71xx-mikrotik_gcc-7.4.0_musl.Linux-x86_64.tar.xz | tar xJ

cd openwrt-sdk-ar71xx-mikrotik_gcc-7.4.0_musl.Linux-x86_64

./scripts/feeds update -a

./scripts/feeds install -a

git clone https://github.com/petroborys/owrt_uart_test.git package/owrt_uart_test

make defconfig

make package/owrt_uart_test/compile

ls bin/packages/*/*

# cd src

# make

# ls

# git clone https://git.openwrt.org/openwrt/openwrt.git openwrt
 
# cd openwrt

# git checkout v18.06.5 

# make distclean

# ./scripts/feeds update -a

# ./scripts/feeds install -a

# git clone https://github.com/petroborys/owrt_uart_test.git package/uart_test

# export FORCE_UNSAFE_CONFIGURE=1

# cp ../targets/mikrotik/config .config

# make defconfig

# # make download

# # make toolchain/install

# make package/uart_test/download

# make package/uart_test/prepare

# make package/uart_test/compile -j1 V=s

# ls bin/packages/*/*

# git clone --branch v18.06.5 --depth 1 https://git.openwrt.org/openwrt/openwrt.git openwrt

