#!/bin/bash
UDEV_RULE="/usr/lib/udev/rules.d/88-rockusb.rules"
sudo tee ${UDEV_RULE} <<< 'SUBSYSTEMS=="usb",ATTRS{idVendor}=="2207", MODE="0666"'
sudo udevadm control --reload-rules
