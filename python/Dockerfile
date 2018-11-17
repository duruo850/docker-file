FROM ubuntu:18.04


ENV NGINX_VERSION 3.7


RUN apt-get update  && apt-get -y upgrade  \
  && apt-get install -y python$(NGINX_VERSION) python3-pip python3-dev  libpython3.7-dev python3-pip\
  && ln -sf /usr/bin/python3 /usr/bin/python \
  && pip3 install --upgrade pip \
  && python3 -m pip install --upgrade pip  ## fix ModuleNotFoundError: No module named 'pip._internal' \
  && apt-get install --yes libmysqld-dev uwsgi-plugin-python swig libssl-dev pylint mysql-client libfreetype6-dev \
    libjpeg-dev libxml2-dev libxslt-dev python-yaml python-lxml libyaml-cpp-dev libffi-dev libssl-dev \
  && ln -sf /usr/lib/x86_64-linux-gnu/libjpeg.so /usr/lib \
  && pip install -r requirements.txt

ENTRYPOINT ["python3"]