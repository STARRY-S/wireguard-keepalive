#!/bin/bash

set -euo pipefail
ping -i 5 ${DESTINATION:-'127.0.0.1'}
