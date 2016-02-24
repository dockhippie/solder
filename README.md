# Solder

[![](https://badge.imagelayers.io/webhippie/solder:latest.svg)](https://imagelayers.io/?images=webhippie/solder:latest 'Get your own badge on imagelayers.io')

These are docker images for Technic Solder with Caddy running on an
[PHP container](https://registry.hub.docker.com/u/webhippie/php-caddy/).


## Usage

```bash
docker run -ti \
  --name solder \
  webhippie/solder:latest
```


## Versions

* [latest](https://github.com/dockhippie/solder/tree/master)
  available as ```webhippie/solder:latest``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/solder/)
* [0.7.2](https://github.com/dockhippie/solder/tree/0.7.2)
  available as ```webhippie/solder:0.7.2``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/solder/)


## Available environment variables

```bash
ENV SOLDER_APP_DEBUG false
ENV SOLDER_APP_URL http://localhost:8080
ENV SOLDER_APP_TIMEZONE UTC
ENV SOLDER_APP_LOCALE en
ENV SOLDER_APP_CIPHER MCRYPT_RIJNDAEL_128
ENV SOLDER_APP_KEY # gets generated if not provided
ENV SOLDER_REDIS_HOST redis
ENV SOLDER_REDIS_PORT 6379
ENV SOLDER_REDIS_DATABASE 0
ENV SOLDER_REDIS_CLUSTER false
ENV SOLDER_MAIL_DRIVER smtp
ENV SOLDER_MAIL_HOST smtp.mailgun.org
ENV SOLDER_MAIL_PORT 587
ENV SOLDER_MAIL_ENCRYPTION tls
ENV SOLDER_MAIL_USERNAME
ENV SOLDER_MAIL_PASSWORD
ENV SOLDER_MAIL_ADDRESS solder@localhost
ENV SOLDER_MAIL_NAME Solder
ENV SOLDER_MAIL_SENDMAIL /usr/sbin/sendmail -bs
ENV SOLDER_REPO_LOCATION # must include a trailing slash
ENV SOLDER_MIRROR_URL # must include a trailing slash
ENV SOLDER_USE_S3 false
ENV SOLDER_S3_ACCESS_KEY
ENV SOLDER_S3_SECRET_KEY
ENV SOLDER_S3_BUCKET solder
ENV SOLDER_DB_TYPE mysql # can also be sqlite or pgsql
ENV SOLDER_DB_HOST mysql # postgres for pgsql
ENV SOLDER_DB_DATABASE solder # /storage/database.sqlite3 for sqlite
ENV SOLDER_DB_USERNAME root
ENV SOLDER_DB_PASSWORD root
ENV SOLDER_DB_PREFIX
ENV SOLDER_DB_CHARSET utf8
ENV SOLDER_DB_COLLATION utf8_unicode_ci # used by mysql
ENV SOLDER_DB_SCHEMA public # used by pgsql
```


## Inherited environment variables

```bash
ENV PHP_MEMORY_LIMIT 512M
ENV PHP_POST_MAX_SIZE 2G
ENV PHP_UPLOAD_MAX_FILESIZE 2G
ENV PHP_MAX_EXECUTION_TIME 3600
ENV PHP_MAX_INPUT_TIME 3600
ENV PHP_DATE_TIMEZONE UTC
```

```bash
ENV LOGSTASH_ENABLED false
ENV LOGSTASH_HOST logstash
ENV LOGSTASH_PORT 5043
ENV LOGSTASH_CA /etc/ssl/logstash/certs/ca.pem # As string or filename
ENV LOGSTASH_CERT /etc/ssl/logstash/certs/cert.pem # As string or filename
ENV LOGSTASH_KEY /etc/ssl/logstash/private/cert.pem # As string or filename
ENV LOGSTASH_TIMEOUT 15
ENV LOGSTASH_OPTS
```


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
```
