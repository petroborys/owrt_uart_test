#!/bin/sh

set -ex

git clone https://git.openwrt.org/openwrt/openwrt.git openwrt

cd openwrt

git checkout v18.06.5 

make distclean

./scripts/feeds update -a

./scripts/feeds install -a

git clone https://github.com/petroborys/owrt_uart_test.git package/uart_test

cp ../targets/mikrotik/config .config

make defconfig

make download

make toolchain/install

# git clone --branch v18.06.5 --depth 1 https://git.openwrt.org/openwrt/openwrt.git openwrt

