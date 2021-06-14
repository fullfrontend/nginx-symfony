# nginx-symfony

[![](https://images.microbadger.com/badges/version/he8us/nginx-symfony.svg)](http://microbadger.com/images/he8us/nginx-symfony "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/he8us/nginx-symfony.svg)](http://microbadger.com/images/he8us/nginx-symfony "Get your own image badge on microbadger.com")

My Docker container to run symfony with nginx. This image is meant to run behind a load balancer like [Traefik](https://traefik.io/)

## How to use this image

This image is made to be used in conjunction with an other php-fpm image. You can see mine for my prod server on [it's repo](https://github.com/he8us/php-fpm-prod)

I use docker compose to handle my stack so here is my nginx config:
```
nginx:
    image: he8us/nginx-symfony
    ports:
        - 80
        
    environment:
        PHP_UPSTREAM: "php-runner:9000"
        VIRTUAL_HOST: "he8us.dev"
        DOCUMENT_ROOT: "/var/www/he8us/"

    volumes_from:
        - application
```

## Environment variables

* PHP_UPSTREAM: where is running php-fpm
* VIRTUAL_HOST: host name to respond to
* DOCUMENT_ROOT: where the files are located

## Example
A Full working example using docker-compose is available in the [example](example) folder

