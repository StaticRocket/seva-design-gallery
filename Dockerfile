FROM alpine

RUN apk update && apk add --update lighttpd

COPY design_gallery /var/www/localhost/htdocs

EXPOSE 80
CMD lighttpd -D -f /etc/lighttpd/lighttpd.conf
