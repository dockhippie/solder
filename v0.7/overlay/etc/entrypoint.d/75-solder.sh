#!/usr/bin/env bash

declare -x SOLDER_REPO_LOCATION
[[ -z "${SOLDER_REPO_LOCATION}" ]] && SOLDER_REPO_LOCATION=""

declare -x SOLDER_MIRROR_URL
[[ -z "${SOLDER_MIRROR_URL}" ]] && SOLDER_MIRROR_URL=""

declare -x SOLDER_MD5_CONNECT_TIMEOUT
[[ -z "${SOLDER_MD5_CONNECT_TIMEOUT}" ]] && SOLDER_MD5_CONNECT_TIMEOUT="5"

declare -x SOLDER_MD5_FILE_TIMEOUT
[[ -z "${SOLDER_MD5_FILE_TIMEOUT}" ]] && SOLDER_MD5_FILE_TIMEOUT="30"

declare -x SOLDER_DISABLE_MOD_API
[[ -z "${SOLDER_DISABLE_MOD_API}" ]] && SOLDER_DISABLE_MOD_API="false"

true
