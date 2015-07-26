FROM jenkins:latest
MAINTAINER r.dikkes (at) gmail.com

COPY mesos.txt /mesos.txt

RUN /usr/local/bin/plugins.sh mesos.txt