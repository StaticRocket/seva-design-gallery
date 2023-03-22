FROM debian

RUN apt-get update && apt-get install -y --no-install-recommends \
	lighttpd \
	&& rm -rf /var/lib/apt/lists/*

COPY design_gallery /var/www/html

EXPOSE 80
ENTRYPOINT ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
