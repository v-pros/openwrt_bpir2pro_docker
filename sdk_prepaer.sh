#!/bin/bash
set -e
source sdk_cfg
./docker_create.sh

git clone https://git.openwrt.org/openwrt/openwrt.git
cp bpir2pro.config $SDK_PATH/.config

./sdk_bash.sh -c "\
./scripts/feeds update -a; \
./scripts/feeds install -a; \
make -j $(nproc) defconfig download "
