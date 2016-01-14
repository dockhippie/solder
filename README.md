# Solder

[![](https://badge.imagelayers.io/webhippie/solder-apache:latest.svg)](https://imagelayers.io/?images=webhippie/solder-apache:latest 'Get your own badge on imagelayers.io')

These are docker images for [TechnicSolder](https://github.com/TechnicPack/TechnicSolder) with Apache running on an
[PHP container](https://registry.hub.docker.com/u/webhippie/php-apache/).


## Usage

```bash
docker run -ti \
  --name solder-apache \
  webhippie/solder-apache:latest
```


## Versions

* [latest](https://github.com/dockhippie/solder/tree/master)
  available as ```webhippie/solder-apache:latest``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/solder-apache/)
* [0.7.2.2](https://github.com/dockhippie/solder/tree/master)
  available as ```webhippie/solder-apache:0.7.2.2``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/solder-apache/)

## Available environment variables

```bash
ENV SOLDER_
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
