#!/bin/bash

set -exuo pipefail

cd $(dirname $0)/package

docker build --tag hxstarrys/keepalive .
docker push hxstarrys/keepalive
