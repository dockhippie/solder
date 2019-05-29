#!/bin/bash

if [ -z "${SOLDER_APP_URL}" ]
then
  echo >&2 "Error: You have to provide SOLDER_APP_URL environment variable"
  /bin/s6-svscanctl -t /etc/s6
  exit 1
fi

if [ -z "${SOLDER_REPO_LOCATION}" ]
then
  echo >&2 "Error: You have to provide SOLDER_REPO_LOCATION environment variable"
  /bin/s6-svscanctl -t /etc/s6
  exit 1
fi

if [ -z "${SOLDER_MIRROR_URL}" ]
then
  echo >&2 "Error: You have to provide SOLDER_MIRROR_URL environment variable"
  /bin/s6-svscanctl -t /etc/s6
  exit 1
fi

for CONFIG in app database mail solder
do
  echo "> writing ${CONFIG} config"
  /usr/bin/gomplate -V \
    -o /srv/www/app/config/${CONFIG}.php \
    -f /etc/templates/${CONFIG}.php.tmpl

  if [[ $? -ne 0 ]]
  then
    echo "> writing config failed!"
    /bin/s6-svscanctl -t /etc/s6
    exit 1
  fi
done
