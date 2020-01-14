#!/bin/sh

set -ex

echo "Fetching source..."

git clone --branch v18.06.6 --depth 1 https://git.openwrt.org/openwrt/openwrt.git openwrt

