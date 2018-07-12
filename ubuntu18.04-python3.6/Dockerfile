FROM ubuntu:18.04
MAINTAINER duruo850

ADD install.sh ./
RUN install.sh

ADD requirements.txt ./
RUN pip install -r requirements.txt