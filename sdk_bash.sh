#!/bin/bash
source sdk_cfg
docker run $D_FLAGS $D_IMG:$D_TAG bash "$@"