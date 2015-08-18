FROM jenkins:latest
MAINTAINER r.dikkes (at) gmail.com

COPY mesos.txt /mesos.txt

# We compile the Mesos environment for the library file
RUN wget http://archive.apache.org/dist/mesos/0.23.0/mesos-0.23.0.tar.gz -O mesos-0.23.0.tar.gz
RUN tar zxf mesos-0.23.0.tar.gz
RUN mkdir -p build && cd build
RUN ../mesos-0.23.0/configure
RUN make

RUN /usr/local/bin/plugins.sh mesos.txt
