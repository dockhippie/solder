# Solder

[![Build Status](https://cloud.drone.io/api/badges/dockhippie/solder/status.svg)](https://cloud.drone.io/dockhippie/solder)
[![](https://images.microbadger.com/badges/image/webhippie/solder.svg)](https://microbadger.com/images/webhippie/solder "Get your own image badge on microbadger.com")

These are docker images for [Technic Solder](https://github.com/TechnicPack/TechnicSolder) running on an [PHP Caddy container](https://registry.hub.docker.com/u/webhippie/php-caddy/).


## Versions

* [latest](./latest) available as `webhippie/solder:latest`
* [0.7](./v0.7) available as `webhippie/solder:0.7`


## Volumes

* /var/lib/solder


## Ports

* 8080


## Available environment variables

```bash
SOLDER_APP_CIPHER = MCRYPT_RIJNDAEL_128
SOLDER_APP_DEBUG = false
SOLDER_APP_KEY =
SOLDER_APP_LOCALE = en
SOLDER_APP_TIMEZONE = UTC
SOLDER_APP_URL = http://localhost:8080
SOLDER_BASE_DIR = /var/lib/solder
SOLDER_DB_CHARSET = utf8
SOLDER_DB_COLLATION = utf8_general_ci
SOLDER_DB_DATABASE = ${SOLDER_BASE_DIR}/database.sqlite3
SOLDER_DB_DATABASE = solder
SOLDER_DB_HOST = mysql
SOLDER_DB_HOST = postgres
SOLDER_DB_PASSWORD =
SOLDER_DB_PREFIX =
SOLDER_DB_SCHEMA = public
SOLDER_DB_TYPE = mysql
SOLDER_DB_USERNAME = root
SOLDER_MAIL_ADDRESS = solder@localhost
SOLDER_MAIL_DRIVER = smtp
SOLDER_MAIL_ENCRYPTION = tls
SOLDER_MAIL_HOST = smtp.mailgun.org
SOLDER_MAIL_NAME = Solder
SOLDER_MAIL_PASSWORD =
SOLDER_MAIL_PORT = 587
SOLDER_MAIL_SENDMAIL = /usr/sbin/sendmail -bs
SOLDER_MAIL_USERNAME =
SOLDER_MIRROR_URL =
SOLDER_REDIS_CLUSTER = false
SOLDER_REDIS_DATABASE = 0
SOLDER_REDIS_HOST = redis
SOLDER_REDIS_PORT = 6379
SOLDER_REPO_LOCATION =
SOLDER_S3_ACCESS_KEY =
SOLDER_S3_BUCKET = solder
SOLDER_S3_SECRET_KEY =
SOLDER_USE_S3 = false
```


## Inherited environment variables

* [webhippie/php-caddy](https://github.com/dockhippie/php/tree/master/caddy#available-environment-variables)
* [webhippie/caddy](https://github.com/dockhippie/caddy#available-environment-variables)
* [webhippie/alpine](https://github.com/dockhippie/alpine#available-environment-variables)


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
