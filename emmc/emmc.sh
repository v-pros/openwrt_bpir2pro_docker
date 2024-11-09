#!/bin/bash
IMG=$1
DIR="$(dirname $(realpath $0))"
LOADER="$DIR/MiniLoaderAll.bin"

$DIR/upgrade_tool db $LOADER
$DIR/upgrade_tool wl 0 $IMG
$DIR/upgrade_tool rd
