#!/bin/bash

declare -x SOLDER_BASE_DIR
[[ -z "${SOLDER_BASE_DIR}" ]] && SOLDER_BASE_DIR="/var/lib/solder"

declare -x SOLDER_APP_DEBUG
[[ -z "${SOLDER_APP_DEBUG}" ]] && SOLDER_APP_DEBUG="false"

declare -x SOLDER_APP_URL
[[ -z "${SOLDER_APP_URL}" ]] && SOLDER_APP_URL="http://localhost:8080"

declare -x SOLDER_APP_TIMEZONE
[[ -z "${SOLDER_APP_TIMEZONE}" ]] && SOLDER_APP_TIMEZONE="UTC"

declare -x SOLDER_APP_LOCALE
[[ -z "${SOLDER_APP_LOCALE}" ]] && SOLDER_APP_LOCALE="en"

declare -x SOLDER_APP_CIPHER
[[ -z "${SOLDER_APP_CIPHER}" ]] && SOLDER_APP_CIPHER="MCRYPT_RIJNDAEL_128"

declare -x SOLDER_APP_KEY
[[ -z "${SOLDER_APP_KEY}" ]] && SOLDER_APP_KEY=""

declare -x SOLDER_REDIS_HOST
[[ -z "${SOLDER_REDIS_HOST}" ]] && SOLDER_REDIS_HOST="redis"

declare -x SOLDER_REDIS_PORT
[[ -z "${SOLDER_REDIS_PORT}" ]] && SOLDER_REDIS_PORT="6379"

declare -x SOLDER_REDIS_DATABASE
[[ -z "${SOLDER_REDIS_DATABASE}" ]] && SOLDER_REDIS_DATABASE="0"

declare -x SOLDER_REDIS_CLUSTER
[[ -z "${SOLDER_REDIS_CLUSTER}" ]] && SOLDER_REDIS_CLUSTER="false"

declare -x SOLDER_MAIL_DRIVER
[[ -z "${SOLDER_MAIL_DRIVER}" ]] && SOLDER_MAIL_DRIVER="smtp"

declare -x SOLDER_MAIL_HOST
[[ -z "${SOLDER_MAIL_HOST}" ]] && SOLDER_MAIL_HOST="smtp.mailgun.org"

declare -x SOLDER_MAIL_PORT
[[ -z "${SOLDER_MAIL_PORT}" ]] && SOLDER_MAIL_PORT="587"

declare -x SOLDER_MAIL_ENCRYPTION
[[ -z "${SOLDER_MAIL_ENCRYPTION}" ]] && SOLDER_MAIL_ENCRYPTION="tls"

declare -x SOLDER_MAIL_USERNAME
[[ -z "${SOLDER_MAIL_USERNAME}" ]] && SOLDER_MAIL_USERNAME=""

declare -x SOLDER_MAIL_PASSWORD
[[ -z "${SOLDER_MAIL_PASSWORD}" ]] && SOLDER_MAIL_PASSWORD=""

declare -x SOLDER_MAIL_ADDRESS
[[ -z "${SOLDER_MAIL_ADDRESS}" ]] && SOLDER_MAIL_ADDRESS="solder@localhost"

declare -x SOLDER_MAIL_NAME
[[ -z "${SOLDER_MAIL_NAME}" ]] && SOLDER_MAIL_NAME="Solder"

declare -x SOLDER_MAIL_SENDMAIL
[[ -z "${SOLDER_MAIL_SENDMAIL}" ]] && SOLDER_MAIL_SENDMAIL="/usr/sbin/sendmail -bs"

declare -x SOLDER_REPO_LOCATION
[[ -z "${SOLDER_REPO_LOCATION}" ]] && SOLDER_REPO_LOCATION=""

declare -x SOLDER_MIRROR_URL
[[ -z "${SOLDER_MIRROR_URL}" ]] && SOLDER_MIRROR_URL=""

declare -x SOLDER_USE_S3
[[ -z "${SOLDER_USE_S3}" ]] && SOLDER_USE_S3="false"

declare -x SOLDER_S3_ACCESS_KEY
[[ -z "${SOLDER_S3_ACCESS_KEY}" ]] && SOLDER_S3_ACCESS_KEY=""

declare -x SOLDER_S3_SECRET_KEY
[[ -z "${SOLDER_S3_SECRET_KEY}" ]] && SOLDER_S3_SECRET_KEY=""

declare -x SOLDER_S3_BUCKET
[[ -z "${SOLDER_S3_BUCKET}" ]] && SOLDER_S3_BUCKET="solder"

declare -x SOLDER_DB_TYPE
[[ -z "${SOLDER_DB_TYPE}" ]] && SOLDER_DB_TYPE="sqlite"

case "${SOLDER_DB_TYPE}" in
  "sqlite")
    declare -x SOLDER_DB_DATABASE
    [[ -z "${SOLDER_DB_DATABASE}" ]] && SOLDER_DB_DATABASE="${SOLDER_BASE_DIR}/database.sqlite3"

    declare -x SOLDER_DB_PREFIX
    [[ -z "${SOLDER_DB_PREFIX}" ]] && SOLDER_DB_PREFIX=""
    ;;

  "mysql")
    declare -x SOLDER_DB_HOST
    [[ -z "${SOLDER_DB_HOST}" ]] && SOLDER_DB_HOST="mysql"

    declare -x SOLDER_DB_DATABASE
    [[ -z "${SOLDER_DB_DATABASE}" ]] && SOLDER_DB_DATABASE="solder"

    declare -x SOLDER_DB_USERNAME
    [[ -z "${SOLDER_DB_USERNAME}" ]] && SOLDER_DB_USERNAME="root"

    declare -x SOLDER_DB_PASSWORD
    [[ -z "${SOLDER_DB_PASSWORD}" ]] && SOLDER_DB_PASSWORD=""

    declare -x SOLDER_DB_PREFIX
    [[ -z "${SOLDER_DB_PREFIX}" ]] && SOLDER_DB_PREFIX=""

    declare -x SOLDER_DB_CHARSET
    [[ -z "${SOLDER_DB_CHARSET}" ]] && SOLDER_DB_CHARSET="utf8"

    declare -x SOLDER_DB_COLLATION
    [[ -z "${SOLDER_DB_COLLATION}" ]] && SOLDER_DB_COLLATION="utf8_general_ci"
    ;;

  "pgsql")
    declare -x SOLDER_DB_HOST
    [[ -z "${SOLDER_DB_HOST}" ]] && SOLDER_DB_HOST="postgres"

    declare -x SOLDER_DB_DATABASE
    [[ -z "${SOLDER_DB_DATABASE}" ]] && SOLDER_DB_DATABASE="solder"

    declare -x SOLDER_DB_USERNAME
    [[ -z "${SOLDER_DB_USERNAME}" ]] && SOLDER_DB_USERNAME="root"

    declare -x SOLDER_DB_PASSWORD
    [[ -z "${SOLDER_DB_PASSWORD}" ]] && SOLDER_DB_PASSWORD=""

    declare -x SOLDER_DB_PREFIX
    [[ -z "${SOLDER_DB_PREFIX}" ]] && SOLDER_DB_PREFIX=""

    declare -x SOLDER_DB_CHARSET
    [[ -z "${SOLDER_DB_CHARSET}" ]] && SOLDER_DB_CHARSET="utf8"

    declare -x SOLDER_DB_SCHEMA
    [[ -z "${SOLDER_DB_SCHEMA}" ]] && SOLDER_DB_SCHEMA="public"
    ;;
esac

if [ -z "${SOLDER_APP_KEY}" ]
then
  if [ -f ${SOLDER_BASE_DIR}/secret ]
  then
    SOLDER_APP_KEY=$(cat ${SOLDER_BASE_DIR}/secret | head -n1)
  else
    SOLDER_APP_KEY=$(date +%s | sha256sum | base64 | head -c 32 ; echo)
    echo "${SOLDER_APP_KEY}" > ${SOLDER_BASE_DIR}/secret
  fi
fi
