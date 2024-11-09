 # Scripts for building [Banana_Pi_BPI-R2_Pro](https://wiki.banana-pi.org/Banana_Pi_BPI-R2_Pro) openwrt firmware into docker container

 * build docker: [docker_create.sh](docker_create.sh)
 * get ready to build: [sdk_prepaer.sh](sdk_prepaer.sh)
 * build: [sdk_build.sh](sdk_build.sh)
 * extract img from openwrt/bin/targets/rockchip/armv8/openwrt-snapshot-*-sysupgrade.img.gz
 * write img to sd card with dd or [rufus](https://rufus.ie/)
 * write img to emmc: [README.md](emmc/README.md)