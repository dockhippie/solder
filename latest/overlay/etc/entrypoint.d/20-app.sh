#!/usr/bin/env bash

declare -x SOLDER_STORAGE_PATH
[[ -z "${SOLDER_STORAGE_PATH}" ]] && SOLDER_STORAGE_PATH="/var/lib/solder"

declare -x SOLDER_APP_NAME
[[ -z "${SOLDER_APP_NAME}" ]] && SOLDER_APP_NAME="Solder"

declare -x SOLDER_APP_ENV
[[ -z "${SOLDER_APP_ENV}" ]] && SOLDER_APP_ENV="production"

declare -x SOLDER_APP_DEBUG
[[ -z "${SOLDER_APP_DEBUG}" ]] && SOLDER_APP_DEBUG="false"

declare -x SOLDER_APP_URL
[[ -z "${SOLDER_APP_URL}" ]] && SOLDER_APP_URL="http://localhost:8080"

declare -x SOLDER_APP_ASSET_URL
[[ -z "${SOLDER_APP_ASSET_URL}" ]] && SOLDER_APP_ASSET_URL=""

declare -x SOLDER_APP_TIMEZONE
[[ -z "${SOLDER_APP_TIMEZONE}" ]] && SOLDER_APP_TIMEZONE="UTC"

declare -x SOLDER_APP_LOCALE
[[ -z "${SOLDER_APP_LOCALE}" ]] && SOLDER_APP_LOCALE="en"

declare -x SOLDER_APP_FALLBACK_LOCALE
[[ -z "${SOLDER_APP_FALLBACK_LOCALE}" ]] && SOLDER_APP_FALLBACK_LOCALE="en"

declare -x SOLDER_APP_FAKER_LOCALE
[[ -z "${SOLDER_APP_FAKER_LOCALE}" ]] && SOLDER_APP_FAKER_LOCALE="en_US"

declare -x SOLDER_APP_KEY
[[ -z "${SOLDER_APP_KEY}" ]] && SOLDER_APP_KEY=""

declare -x SOLDER_APP_CIPHER
[[ -z "${SOLDER_APP_CIPHER}" ]] && SOLDER_APP_CIPHER="AES-256-CBC"

true
