# nginx-symfony

A Docker container to run Symfony with NGINX, with Brotli and every optimization in mind. This image is meant to run 
behind a load balancer like 
[Traefik]
(https://traefik.io/)

## How to use this image

This image is made to be used in conjunction with a php-fpm image [like mine]
(https://github.com/fullfrontend/php-fpm)

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

