#!/bin/bash

set -euo pipefail

while true
do
    ping -c 6 -i 5 ${DESTINATION:-'127.0.0.1'}
    sleep 5
done
