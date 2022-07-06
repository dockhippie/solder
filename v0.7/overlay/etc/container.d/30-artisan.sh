#!/usr/bin/env bash

pushd ${APACHE_WEBROOT} >/dev/null
  echo "> artisan clear compiled"
  su-exec \
    apache \
    /usr/bin/php \
    artisan \
    clear-compiled -n -q

  echo "> artisan optimize assets"
  su-exec \
    apache \
    /usr/bin/php \
    artisan \
    optimize -n -q

  echo "> artisan execute migrate"
  su-exec \
    apache \
    /usr/bin/php \
    artisan \
    migrate -n -q --force
popd >/dev/null

true
