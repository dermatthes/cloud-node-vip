# A basic apache server. To use either add or bind mount content under /var/www
FROM ubuntu:17.04

MAINTAINER Matthias Leuffen version: 0.1

RUN apt-get update && apt-get install -y php7.0 keepalived
# && apt-get clean && rm -rf /var/lib/apt/lists/*

## For debugging
RUN apt-get install -y iputils-ping host telnet vim

## To provide on startup:


ADD cfg/ /
RUN chmod 755 /opt/start_services.sh

CMD ["/opt/start_services.sh"]
