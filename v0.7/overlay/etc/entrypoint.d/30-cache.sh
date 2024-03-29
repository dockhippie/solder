#!/usr/bin/env bash

declare -x SOLDER_CACHE_DRIVER
[[ -z "${SOLDER_CACHE_DRIVER}" ]] && SOLDER_CACHE_DRIVER="file"

declare -x SOLDER_CACHE_DATABASE_CONNECTION
[[ -z "${SOLDER_CACHE_DATABASE_CONNECTION}" ]] && SOLDER_CACHE_DATABASE_CONNECTION=""

declare -x SOLDER_CACHE_DATABASE_LOCK_CONNECTION
[[ -z "${SOLDER_CACHE_DATABASE_LOCK_CONNECTION}" ]] && SOLDER_CACHE_DATABASE_LOCK_CONNECTION=""

declare -x SOLDER_CACHE_FILE_PATH
[[ -z "${SOLDER_CACHE_FILE_PATH}" ]] && SOLDER_CACHE_FILE_PATH=""

declare -x SOLDER_CACHE_MEMCACHED_PERSISTENT_ID
[[ -z "${SOLDER_CACHE_MEMCACHED_PERSISTENT_ID}" ]] && SOLDER_CACHE_MEMCACHED_PERSISTENT_ID=""

declare -x SOLDER_CACHE_MEMCACHED_USERNAME
[[ -z "${SOLDER_CACHE_MEMCACHED_USERNAME}" ]] && SOLDER_CACHE_MEMCACHED_USERNAME=""

declare -x SOLDER_CACHE_MEMCACHED_PASSWORD
[[ -z "${SOLDER_CACHE_MEMCACHED_PASSWORD}" ]] && SOLDER_CACHE_MEMCACHED_PASSWORD=""

declare -x SOLDER_CACHE_MEMCACHED_HOSTS
[[ -z "${SOLDER_CACHE_MEMCACHED_HOSTS}" ]] && SOLDER_CACHE_MEMCACHED_HOSTS=""

declare -x SOLDER_CACHE_REDIS_CONNECTION
[[ -z "${SOLDER_CACHE_REDIS_CONNECTION}" ]] && SOLDER_CACHE_REDIS_CONNECTION="cache"

declare -x SOLDER_CACHE_REDIS_LOCK_CONNECTION
[[ -z "${SOLDER_CACHE_REDIS_LOCK_CONNECTION}" ]] && SOLDER_CACHE_REDIS_LOCK_CONNECTION="default"

declare -x SOLDER_CACHE_DYNAMODB_KEY
[[ -z "${SOLDER_CACHE_DYNAMODB_KEY}" ]] && SOLDER_CACHE_DYNAMODB_KEY="${AWS_ACCESS_KEY_ID}"

declare -x SOLDER_CACHE_DYNAMODB_SECRET
[[ -z "${SOLDER_CACHE_DYNAMODB_SECRET}" ]] && SOLDER_CACHE_DYNAMODB_SECRET="${AWS_SECRET_ACCESS_KEY}"

declare -x SOLDER_CACHE_DYNAMODB_REGION
[[ -z "${SOLDER_CACHE_DYNAMODB_REGION}" ]] && SOLDER_CACHE_DYNAMODB_REGION="${AWS_DEFAULT_REGION}"

declare -x SOLDER_CACHE_DYNAMODB_TABLE
[[ -z "${SOLDER_CACHE_DYNAMODB_TABLE}" ]] && SOLDER_CACHE_DYNAMODB_TABLE="cache"

declare -x SOLDER_CACHE_DYNAMODB_ENDPOINT
[[ -z "${SOLDER_CACHE_DYNAMODB_ENDPOINT}" ]] && SOLDER_CACHE_DYNAMODB_ENDPOINT=""

declare -x SOLDER_CACHE_PREFIX
[[ -z "${SOLDER_CACHE_PREFIX}" ]] && SOLDER_CACHE_PREFIX=""

true
