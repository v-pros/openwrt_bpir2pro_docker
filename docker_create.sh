#!/bin/bash
source sdk_cfg
docker build -t $D_IMG:$D_TAG --build-arg USER_ID=$USER_ID .