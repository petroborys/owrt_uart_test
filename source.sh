#!/bin/sh

set -ex

git clone https://git.openwrt.org/openwrt/openwrt.git openwrt

cd openwrt

git checkout v18.06.5 

make distclean

./scripts/feeds update -a

./scripts/feeds install -a

git clone https://github.com/petroborys/owrt_uart_test.git package/uart_test

export FORCE_UNSAFE_CONFIGURE=1

cp ../targets/mikrotik/config .config

make defconfig

make toolchain/install -j1 V=s

# git clone --branch v18.06.5 --depth 1 https://git.openwrt.org/openwrt/openwrt.git openwrt

