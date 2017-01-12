# Solder

[![](https://images.microbadger.com/badges/image/webhippie/solder.svg)](https://microbadger.com/images/webhippie/solder "Get your own image badge on microbadger.com")

These are docker images for [TechnicSolder](https://github.com/TechnicPack/TechnicSolder) with Apache running on a [PHP container](https://registry.hub.docker.com/u/webhippie/php-apache/).


## Versions

* [latest](https://github.com/dockhippie/solder/tree/master) available as ```webhippie/solder:latest``` at [Docker Hub](https://registry.hub.docker.com/u/webhippie/solder/)
* [0.7.2.2](https://github.com/dockhippie/solder/tree/master) available as ```webhippie/solder:0.7.2.2``` at [Docker Hub](https://registry.hub.docker.com/u/webhippie/solder/)


## Volumes

* /app/storage


## Ports

* 8080


## Available environment variables

```bash
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
ENV APACHE_HOSTNAME $HOSTNAME
ENV APACHE_WEBROOT /srv/www
```

```bash
ENV CRON_ENABLED false
```


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2015-2017 Thomas Boerger <http://www.webhippie.de>
```
