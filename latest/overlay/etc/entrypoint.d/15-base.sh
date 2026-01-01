#!/usr/bin/env bash

declare -x SOLDER_STORAGE_PATH
: "${SOLDER_STORAGE_PATH:="/var/lib/solder"}"

declare -x SOLDER_SKIP_CHOWN
: "${SOLDER_SKIP_CHOWN:="false"}"
