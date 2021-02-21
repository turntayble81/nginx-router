FROM ubuntu:20.04

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y --no-install-recommends \
    certbot nginx cron rsyslog

COPY includes/ /includes

WORKDIR /root

CMD bash /includes/init-router.sh
