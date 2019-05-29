#!/bin/bash

case "${SOLDER_DB_TYPE}" in
  "sqlite")
    if [ -z "${SOLDER_DB_DATABASE}" ]
    then
      echo >&2 "Error: You have to provide SOLDER_DB_DATABASE environment variable"
      /bin/s6-svscanctl -t /etc/s6
      exit 1
    fi

    if [ ! -f "${SOLDER_DB_DATABASE}" ]
    then
      echo "> creating database"
      su-exec \
        caddy \
        /usr/bin/sqlite3 \
        ${SOLDER_DB_DATABASE} \
        ""
    fi
    ;;

  "mysql")
    if [ -z "${SOLDER_DB_USERNAME}" ]
    then
      echo >&2 "Error: You have to provide SOLDER_DB_USERNAME environment variable"
      /bin/s6-svscanctl -t /etc/s6
      exit 1
    fi

    if [ -z "${SOLDER_DB_PASSWORD}" ]
    then
      echo >&2 "Error: You have to provide SOLDER_DB_PASSWORD environment variable"
      /bin/s6-svscanctl -t /etc/s6
      exit 1
    fi
    ;;

  "pgsql")
    if [ -z "${SOLDER_DB_USERNAME}" ]
    then
      echo >&2 "Error: You have to provide SOLDER_DB_USERNAME environment variable"
      /bin/s6-svscanctl -t /etc/s6
      exit 1
    fi

    if [ -z "${SOLDER_DB_PASSWORD}" ]
    then
      echo >&2 "Error: You have to provide SOLDER_DB_PASSWORD environment variable"
      /bin/s6-svscanctl -t /etc/s6
      exit 1
    fi
    ;;
esac
