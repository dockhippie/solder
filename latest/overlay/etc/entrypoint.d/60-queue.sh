#!/usr/bin/env bash

declare -x SOLDER_QUEUE_DRIVER
[[ -z "${SOLDER_QUEUE_DRIVER}" ]] && SOLDER_QUEUE_DRIVER="sync"

declare -x SOLDER_QUEUE_DATABASE_RETRY_AFTER
[[ -z "${SOLDER_QUEUE_DATABASE_RETRY_AFTER}" ]] && SOLDER_QUEUE_DATABASE_RETRY_AFTER="90"

declare -x SOLDER_QUEUE_BEANSTALKD_HOST
[[ -z "${SOLDER_QUEUE_BEANSTALKD_HOST}" ]] && SOLDER_QUEUE_BEANSTALKD_HOST="beanstalkd"

declare -x SOLDER_QUEUE_BEANSTALKD_QUEUE
[[ -z "${SOLDER_QUEUE_BEANSTALKD_QUEUE}" ]] && SOLDER_QUEUE_BEANSTALKD_QUEUE="default"

declare -x SOLDER_QUEUE_BEANSTALKD_RETRY_AFTER
[[ -z "${SOLDER_QUEUE_BEANSTALKD_RETRY_AFTER}" ]] && SOLDER_QUEUE_BEANSTALKD_RETRY_AFTER="90"

declare -x SOLDER_QUEUE_BEANSTALKD_BLOCK_FOR
[[ -z "${SOLDER_QUEUE_BEANSTALKD_BLOCK_FOR}" ]] && SOLDER_QUEUE_BEANSTALKD_BLOCK_FOR="0"

declare -x SOLDER_QUEUE_SQS_KEY
[[ -z "${SOLDER_QUEUE_SQS_KEY}" ]] && SOLDER_QUEUE_SQS_KEY="${AWS_ACCESS_KEY_ID}"

declare -x SOLDER_QUEUE_SQS_SECRET
[[ -z "${SOLDER_QUEUE_SQS_SECRET}" ]] && SOLDER_QUEUE_SQS_SECRET="${AWS_SECRET_ACCESS_KEY}"

declare -x SOLDER_QUEUE_SQS_PREFIX
[[ -z "${SOLDER_QUEUE_SQS_PREFIX}" ]] && SOLDER_QUEUE_SQS_PREFIX="https://sqs.us-east-1.amazonaws.com/your-account-id"

declare -x SOLDER_QUEUE_SQS_QUEUE
[[ -z "${SOLDER_QUEUE_SQS_QUEUE}" ]] && SOLDER_QUEUE_SQS_QUEUE="default"

declare -x SOLDER_QUEUE_SQS_REGION
[[ -z "${SOLDER_QUEUE_SQS_REGION}" ]] && SOLDER_QUEUE_SQS_REGION="${AWS_DEFAULT_REGION}"

declare -x SOLDER_QUEUE_REDIS_CONNECTION
[[ -z "${SOLDER_QUEUE_REDIS_CONNECTION}" ]] && SOLDER_QUEUE_REDIS_CONNECTION="default"

declare -x SOLDER_QUEUE_REDIS_QUEUE
[[ -z "${SOLDER_QUEUE_REDIS_QUEUE}" ]] && SOLDER_QUEUE_REDIS_QUEUE="default"

declare -x SOLDER_QUEUE_REDIS_RETRY_AFTER
[[ -z "${SOLDER_QUEUE_REDIS_RETRY_AFTER}" ]] && SOLDER_QUEUE_REDIS_RETRY_AFTER="90"

declare -x SOLDER_QUEUE_REDIS_BLOCK_FOR
[[ -z "${SOLDER_QUEUE_REDIS_BLOCK_FOR}" ]] && SOLDER_QUEUE_REDIS_BLOCK_FOR="0"

declare -x SOLDER_QUEUE_FAILED_DRIVER
[[ -z "${SOLDER_QUEUE_FAILED_DRIVER}" ]] && SOLDER_QUEUE_FAILED_DRIVER="database-uuids"

declare -x SOLDER_QUEUE_FAILED_DATABASE_CONNECTION
[[ -z "${SOLDER_QUEUE_FAILED_DATABASE_CONNECTION}" ]] && SOLDER_QUEUE_FAILED_DATABASE_CONNECTION="mysql"

true
