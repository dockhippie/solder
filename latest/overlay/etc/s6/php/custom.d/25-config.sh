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

echo "> writing database config"
/usr/bin/gomplate -V \
  -o /srv/www/app/config/database.php \
  -f /etc/templates/database.php.tmpl

if [[ $? -ne 0 ]]
then
  echo "> writing config failed!"
  /bin/s6-svscanctl -t /etc/s6
  exit 1
fi

echo "> writing app config"
/usr/bin/gomplate -V \
  -o /srv/www/app/config/app.php \
  -f /etc/templates/app.php.tmpl

if [[ $? -ne 0 ]]
then
  echo "> writing config failed!"
  /bin/s6-svscanctl -t /etc/s6
  exit 1
fi

echo "> writing mail config"
/usr/bin/gomplate -V \
  -o /srv/www/app/config/mail.php \
  -f /etc/templates/mail.php.tmpl

if [[ $? -ne 0 ]]
then
  echo "> writing config failed!"
  /bin/s6-svscanctl -t /etc/s6
  exit 1
fi

echo "> writing solder config"
/usr/bin/gomplate -V \
  -o /srv/www/app/config/solder.php \
  -f /etc/templates/solder.php.tmpl

if [[ $? -ne 0 ]]
then
  echo "> writing config failed!"
  /bin/s6-svscanctl -t /etc/s6
  exit 1
fi
