 ## emmc write guide
 *upgrade_tool.exe* *upgrade_tool* from [luckfox](https://github.com/LuckfoxTECH/luckfox-pico/tree/main/tools/)

 *MiniLoaderAll.bin* from [OpenWRT-21.02-EMMCBoot-rockdev-MT7531SW-DSA-20220623.zip](https://wiki.banana-pi.org/Banana_Pi_BPI-R2_Pro)

* add udev rules: [udev_maskrom_no_sudo.sh](udev_maskrom_no_sudo.sh)
    ```bash
    #!/bin/bash
    UDEV_RULE="/usr/lib/udev/rules.d/88-rockusb.rules"
    sudo tee ${UDEV_RULE} <<< 'SUBSYSTEMS=="usb",ATTRS{idVendor}=="2207", MODE="0666"'
    sudo udevadm control --reload-rules
    ```

* enter maskrom:
    * push and hold **RST**
    * push and hold **MASKROM**
    * release **RST**
    * wait **2-5 sec**
    * release **MASKROM**

* write img to emmc: [emmc.sh](emmc.sh) /path/to/image.img
    ```bash
    #!/bin/bash
    IMG=$1
    DIR="$(dirname $(realpath $0))"
    LOADER="$DIR/MiniLoaderAll.bin"

    $DIR/upgrade_tool db $LOADER
    $DIR/upgrade_tool wl 0 $IMG
    $DIR/upgrade_tool rd
    ```