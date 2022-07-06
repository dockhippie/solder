#!/usr/bin/env bash

if [ -z "${SOLDER_APP_URL}" ]; then
    echo >&2 "error: you have to provide SOLDER_APP_URL environment variable"
    exit 1
fi

if [ -z "${SOLDER_REPO_LOCATION}" ]; then
    echo >&2 "error: you have to provide SOLDER_REPO_LOCATION environment variable"
    exit 1
fi

if [ -z "${SOLDER_MIRROR_URL}" ]; then
    echo >&2 "error: you have to provide SOLDER_MIRROR_URL environment variable"
    exit 1
fi

if [ -z "${SOLDER_APP_KEY}" ]; then
    if [ -f ${SOLDER_STORAGE_PATH}/secret ]; then
        SOLDER_APP_KEY=$(cat ${SOLDER_STORAGE_PATH}/secret | head -n1)
    else
        SOLDER_APP_KEY=$(php -f /srv/www/artisan key:generate --show)
        echo "${SOLDER_APP_KEY}" > ${SOLDER_STORAGE_PATH}/secret
    fi
fi

if [ ! -d ${SOLDER_STORAGE_PATH}/resources ]; then
    echo "> creating resources dir"
    mkdir -p ${SOLDER_STORAGE_PATH}/resources

    echo "> remove unused resources"
    rm -rf ${APACHE_WEBROOT}/public/resources/default/mods

    echo "> copy default resources"
    cp -rf ${APACHE_WEBROOT}/public/resources/* ${SOLDER_STORAGE_PATH}/resources/

    echo "> remove resources dir"
    rm -rf ${APACHE_WEBROOT}/public/resources

    echo "> symlink resources dir"
    ln -sf ${SOLDER_STORAGE_PATH}/resources ${APACHE_WEBROOT}/public/resources
fi

for DIR in app github-api-cache logs; do
    if [ ! -d ${SOLDER_STORAGE_PATH}/${DIR} ]; then
        echo "> creating ${DIR} dir"
        mkdir -p ${SOLDER_STORAGE_PATH}/${DIR}

        echo "> remove ${DIR} dir"
        rm -rf ${APACHE_WEBROOT}/storage/${DIR}

        echo "> symlink ${DIR} dir"
        ln -sf ${SOLDER_STORAGE_PATH}/${DIR} ${APACHE_WEBROOT}/storage/${DIR}
    fi
done

if [[ "${SOLDER_SKIP_CHOWN}" != "true" ]]; then
    echo "> chown solder storage"
    find ${SOLDER_STORAGE_PATH} \( \! -user apache -o \! -group apache \) -print0 | xargs -0 -r chown apache:apache
fi

if [[ "${SOLDER_DB_DRIVER}" == "sqlite" ]]; then
    if [  ! -f "${SOLDER_DB_NAME}" ]; then
        su-exec apache sqlite3  ${SOLDER_DB_NAME} ""
    fi
fi

true
