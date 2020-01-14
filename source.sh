#!/bin/sh

set -ex

git clone https://git.openwrt.org/openwrt/openwrt.git openwrt

cd openwrt

git checkout v18.06.5 

make distclean

./scripts/feeds update -a

./scripts/feeds install -a

# git clone --branch v18.06.5 --depth 1 https://git.openwrt.org/openwrt/openwrt.git openwrt

