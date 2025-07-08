FROM fullfrontend/nginx:latest
LABEL maintainer="Cedric Michaux <cedric@fullfrontend.be>"

COPY confd/ /etc/confd
