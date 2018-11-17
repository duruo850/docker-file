FROM ubuntu:18.04

MAINTAINER Jay <zhanchenjin.2008@163.com>

ADD requirements.txt /tmp/

ENV NGINX_VERSION 3.7

RUN apt-get update  && apt-get -y upgrade  \
  && apt-get install -y vim python${NGINX_VERSION} python3.7-dev  libpython3.7-dev python3-setuptools\
  && ln -sf /usr/bin/python3.7 /usr/bin/python3 && ln -sf /usr/bin/python3 /usr/bin/python \
  && apt-get install -y python3-pip && ln -sf /usr/bin/pip3 /usr/bin/pip \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y libmysqld-dev  mysql-client libfreetype6-dev \
    libjpeg-dev libxml2-dev libxslt-dev python3-yaml python3-lxml libyaml-cpp-dev libffi-dev libssl-dev \
  && ln -sf /usr/lib/x86_64-linux-gnu/libjpeg.so /usr/lib \
  && cd /tmp && pip3 install -r requirements.txt && rm /tmp/requirements.txt \
  && apt-get -y clean && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["python3"]