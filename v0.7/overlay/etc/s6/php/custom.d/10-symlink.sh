#!/bin/bash

for DIR in github-api-cache logs meta resources
do
  if [ ! -d ${SOLDER_BASE_DIR}/${DIR} ]
  then
  	echo "> creating ${DIR} directory"
    mkdir -p \
      ${SOLDER_BASE_DIR}/${DIR}
  fi

  echo "> remove original ${DIR}"
  rm -rf \
    /srv/www/app/storage/${DIR}

  echo "> symlink ${DIR} original"
  ln -sf \
    ${SOLDER_BASE_DIR}/${DIR} \
    /srv/www/app/storage/${DIR}
done

if [ ! -d ${SOLDER_BASE_DIR}/resources/default ]
then
	echo "> copy public resources"
  cp -rf \
    /srv/www/public/resources/* \
    ${SOLDER_BASE_DIR}/resources/
fi

echo "> remove public resources"
rm -rf \
  /srv/www/public/resources

echo "> symlink resources public"
ln -sf \
  ${SOLDER_BASE_DIR}/resources \
  /srv/www/public/resources
