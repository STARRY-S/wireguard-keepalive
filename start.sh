#!/bin/bash

set -ex

docker run -dit \
    -e DESTINATION=${DESTINATION:-'127.0.0.1'} \
    --restart=always \
    --name=keepalive \
    hxstarrys/keepalive
