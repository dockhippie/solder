FROM webhippie/php-apache:8-arm64@sha256:86e28cd6ecdf4a17e8a402bf4c5acf2ad6dca564098771cb680a5230198c6bcb

VOLUME ["/var/lib/solder"]
EXPOSE 8080

WORKDIR /srv/www
CMD ["/usr/bin/container"]

RUN apk update && \
  apk upgrade && \
  apk add php8-bcmath@testing sqlite && \
  rm -rf /var/cache/apk/*

ENV PHP_COMPOSER_INSTALL=false

# renovate: datasource=github-releases depName=TechnicPack/TechnicSolder
ENV SOLDER_VERSION=0.7.14

# renovate: datasource=github-releases depName=aptible/supercronic
ENV SUPERCRONIC_VERSION=0.2.1

RUN curl -sSLo - https://github.com/TechnicPack/TechnicSolder/archive/refs/tags/v${SOLDER_VERSION}.tar.gz | tar -xzf - --strip 1 -C /srv/www && \
  cd /srv/www && \
  rm -f /srv/www/.env* && \
  composer install --no-dev --no-interaction && \
  chown -R apache:apache /srv/www && \
  curl -sSLo /usr/bin/supercronic https://github.com/aptible/supercronic/releases/download/v${SUPERCRONIC_VERSION}/supercronic-linux-arm64 && \
  chmod +x /usr/bin/supercronic

COPY ./overlay /
