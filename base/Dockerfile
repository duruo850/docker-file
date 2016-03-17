FROM ubuntu:14.04
MAINTAINER duruo850

# Install packages
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -y upgrade 
# RUN tools = 'vim g++'
RUN tools='vim'\
    &&apt-get install -y $tools --no-install-recommends
