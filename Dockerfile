FROM alpine

RUN apk update && apk add --update lighttpd

COPY design_gallery /var/www/localhost/htdocs

ENTRYPOINT lighttpd -D -f /etc/lighttpd/lighttpd.conf
