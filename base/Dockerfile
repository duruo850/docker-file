FROM ubuntu:14.04
MAINTAINER duruo850

# Install packages
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -y upgrade 
# RUN tools = 'vim g++'
RUN tools='vim'; 
RUN apt-get install -y $tools --no-install-recommends
RUN rm -rf /var/lib/apt/lists/*
