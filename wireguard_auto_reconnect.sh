#!/bin/bash
# SPDX-License-Identifier: MIT
#
# Copyright (C) 2024 Starry Wang <hxstarrys@gmail.com>. All Rights Reserved.

set -euo pipefail

INTERFACE="wg0"
DESTINAION=${DESTINAION:-"172.16.0.1"}

echo "Start detecting connection on $DESTINAION"
i=0
while [[ $i -lt 5 ]] ; do
    {
        ping -c 5 -i 5 -W 5 $DESTINAION > /dev/null && i=0
    } || {
        (( i += 1 ))
        echo "$i: ping $DESTINAION timeout"
    }
done

echo "Restart WireGuard interface ${INTERFACE}"
wg-quick down ${INTERFACE} || echo -n
sleep 5
wg-quick up ${INTERFACE}
