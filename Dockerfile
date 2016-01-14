FROM webhippie/php-apache:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

ENV SOLDER_PATH github.com/TechnicPack/TechnicSolder
ENV SOLDER_REPO https://${SOLDER_PATH}.git
ENV SOLDER_BRANCH master

RUN apk update && \
  apk add -f \
    git && \
  rm /app/.keep && \
  git clone -b ${SOLDER_BRANCH} ${SOLDER_REPO} /app && \
  apk del git && \
  cd /app && \
  composer install \
    --no-dev \
    --no-interaction && \
  mv app/config-sample app/config && \
  mv app/database-sample app/database && \
  rm -rf \
    /var/cache/apk/* \
    /app/.git

VOLUME ["/app/storage"]

ADD rootfs /
EXPOSE 80

WORKDIR /app
CMD ["/bin/s6-svscan", "/etc/s6"]
