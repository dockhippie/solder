#!/usr/bin/env bash

declare -x SOLDER_DB_DRIVER
[[ -z "${SOLDER_DB_DRIVER}" ]] && SOLDER_DB_DRIVER="mysql"

declare -x SOLDER_DB_URL
[[ -z "${SOLDER_DB_URL}" ]] && SOLDER_DB_URL=""

case "${SOLDER_DB_DRIVER}" in
    "sqlite")
        declare -x SOLDER_DB_NAME
        [[ -z "${SOLDER_DB_NAME}" ]] && SOLDER_DB_NAME="${SOLDER_STORAGE_PATH}/database.sqlite3"

        declare -x SOLDER_DB_PREFIX
        [[ -z "${SOLDER_DB_PREFIX}" ]] && SOLDER_DB_PREFIX=""

        declare -x SOLDER_DB_FOREIGN_KEYS
        [[ -z "${SOLDER_DB_FOREIGN_KEYS}" ]] && SOLDER_DB_FOREIGN_KEYS="true"

        ;;

    "mysql")
        declare -x SOLDER_DB_HOST
        [[ -z "${SOLDER_DB_HOST}" ]] && SOLDER_DB_HOST="mysql"

        declare -x SOLDER_DB_PORT
        [[ -z "${SOLDER_DB_PORT}" ]] && SOLDER_DB_PORT="3306"

        declare -x SOLDER_DB_NAME
        [[ -z "${SOLDER_DB_NAME}" ]] && SOLDER_DB_NAME="solder"

        declare -x SOLDER_DB_USERNAME
        [[ -z "${SOLDER_DB_USERNAME}" ]] && SOLDER_DB_USERNAME="solder"

        declare -x SOLDER_DB_PASSWORD
        [[ -z "${SOLDER_DB_PASSWORD}" ]] && SOLDER_DB_PASSWORD=""

        declare -x SOLDER_DB_CHARSET
        [[ -z "${SOLDER_DB_CHARSET}" ]] && SOLDER_DB_CHARSET="utf8mb4"

        declare -x SOLDER_DB_COLLATION
        [[ -z "${SOLDER_DB_COLLATION}" ]] && SOLDER_DB_COLLATION="utf8mb4_unicode_ci"

        declare -x SOLDER_DB_PREFIX
        [[ -z "${SOLDER_DB_PREFIX}" ]] && SOLDER_DB_PREFIX=""

        declare -x SOLDER_DB_PREFIX_INDEXES
        [[ -z "${SOLDER_DB_PREFIX_INDEXES}" ]] && SOLDER_DB_PREFIX_INDEXES="true"

        declare -x SOLDER_DB_STRICT
        [[ -z "${SOLDER_DB_STRICT}" ]] && SOLDER_DB_STRICT="true"

        declare -x SOLDER_DB_ENGINE
        [[ -z "${SOLDER_DB_ENGINE}" ]] && SOLDER_DB_ENGINE=""

        declare -x SOLDER_MYSQL_ATTR_SSL_CA
        [[ -z "${SOLDER_MYSQL_ATTR_SSL_CA}" ]] && SOLDER_MYSQL_ATTR_SSL_CA=""

        ;;

    "pgsql")
        declare -x SOLDER_DB_HOST
        [[ -z "${SOLDER_DB_HOST}" ]] && SOLDER_DB_HOST="postgres"

        declare -x SOLDER_DB_PORT
        [[ -z "${SOLDER_DB_PORT}" ]] && SOLDER_DB_PORT="5432"

        declare -x SOLDER_DB_NAME
        [[ -z "${SOLDER_DB_NAME}" ]] && SOLDER_DB_NAME="solder"

        declare -x SOLDER_DB_USERNAME
        [[ -z "${SOLDER_DB_USERNAME}" ]] && SOLDER_DB_USERNAME="solder"

        declare -x SOLDER_DB_PASSWORD
        [[ -z "${SOLDER_DB_PASSWORD}" ]] && SOLDER_DB_PASSWORD=""

        declare -x SOLDER_DB_CHARSET
        [[ -z "${SOLDER_DB_CHARSET}" ]] && SOLDER_DB_CHARSET="utf8"

        declare -x SOLDER_DB_PREFIX
        [[ -z "${SOLDER_DB_PREFIX}" ]] && SOLDER_DB_PREFIX=""

        declare -x SOLDER_DB_PREFIX_INDEXES
        [[ -z "${SOLDER_DB_PREFIX_INDEXES}" ]] && SOLDER_DB_PREFIX_INDEXES="true"

        declare -x SOLDER_DB_SCHEMA
        [[ -z "${SOLDER_DB_SCHEMA}" ]] && SOLDER_DB_SCHEMA="public"

        declare -x SOLDER_DB_SSLMODE
        [[ -z "${SOLDER_DB_SSLMODE}" ]] && SOLDER_DB_SSLMODE="prefer"

        ;;
esac

declare -x SOLDER_REDIS_CLIENT
[[ -z "${SOLDER_REDIS_CLIENT}" ]] && SOLDER_REDIS_CLIENT="phpredis"

declare -x SOLDER_REDIS_CLUSTER
[[ -z "${SOLDER_REDIS_CLUSTER}" ]] && SOLDER_REDIS_CLUSTER="redis"

declare -x SOLDER_REDIS_PREFIX
[[ -z "${SOLDER_REDIS_PREFIX}" ]] && SOLDER_REDIS_PREFIX=""

declare -x SOLDER_REDIS_DEFAULT_URL
[[ -z "${SOLDER_REDIS_DEFAULT_URL}" ]] && SOLDER_REDIS_DEFAULT_URL=""

declare -x SOLDER_REDIS_DEFAULT_HOST
[[ -z "${SOLDER_REDIS_DEFAULT_HOST}" ]] && SOLDER_REDIS_DEFAULT_HOST="redis"

declare -x SOLDER_REDIS_DEFAULT_PASSWORD
[[ -z "${SOLDER_REDIS_DEFAULT_PASSWORD}" ]] && SOLDER_REDIS_DEFAULT_PASSWORD=""

declare -x SOLDER_REDIS_DEFAULT_PORT
[[ -z "${SOLDER_REDIS_DEFAULT_PORT}" ]] && SOLDER_REDIS_DEFAULT_PORT="6379"

declare -x SOLDER_REDIS_DEFAULT_DB
[[ -z "${SOLDER_REDIS_DEFAULT_DB}" ]] && SOLDER_REDIS_DEFAULT_DB="0"

declare -x SOLDER_REDIS_CACHE_URL
[[ -z "${SOLDER_REDIS_CACHE_URL}" ]] && SOLDER_REDIS_CACHE_URL=""

declare -x SOLDER_REDIS_CACHE_HOST
[[ -z "${SOLDER_REDIS_CACHE_HOST}" ]] && SOLDER_REDIS_CACHE_HOST="${SOLDER_REDIS_DEFAULT_HOST}"

declare -x SOLDER_REDIS_CACHE_PASSWORD
[[ -z "${SOLDER_REDIS_CACHE_PASSWORD}" ]] && SOLDER_REDIS_CACHE_PASSWORD="${SOLDER_REDIS_DEFAULT_PASSWORD}"

declare -x SOLDER_REDIS_CACHE_PORT
[[ -z "${SOLDER_REDIS_CACHE_PORT}" ]] && SOLDER_REDIS_CACHE_PORT="${SOLDER_REDIS_DEFAULT_PORT}"

declare -x SOLDER_REDIS_CACHE_DB
[[ -z "${SOLDER_REDIS_CACHE_DB}" ]] && SOLDER_REDIS_CACHE_DB="1"

true
