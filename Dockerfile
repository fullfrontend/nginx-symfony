FROM fullfrontend/nginx:latest
LABEL maintainer="Cedric Michaux <cedric@fullfrontend.eu>"

COPY confd/ /etc/confd
