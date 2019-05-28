#!/bin/bash

if [[ -d "/storage" ]]
then
  echo "> linking old storage"
  ln -sf \
  	/storage \
  	${SOLDER_BASE_DIR}
else
	echo "> creating app directory"
	mkdir -p \
	  ${SOLDER_BASE_DIR}
fi
