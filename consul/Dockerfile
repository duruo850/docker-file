FROM       scratch
MAINTAINER Jay <zhanchenjin.2008@163.com>

ADD libs/opkg.conf         /etc/opkg.conf
ADD libs/opkg-install      /usr/bin/opkg-install

ADD libs/rootfs.tar     /
ADD libs                /libs

ADD ./config /config/
ONBUILD ADD ./config /config/

ADD tools/check-http /usr/local/bin/check-http
ADD tools/check-cmd /usr/local/bin/check-cmd
ADD run /usr/local/bin/

RUN /libs/libgcc_7.3.0-1_x86_64.ipk
RUN /libs/libc_1.1.20-1_x86_64.ipk


RUN cd /bin && unzip /libs/consul_1.3.0_linux_amd64.zip && chmod +x /bin/consul
RUN opkg-install curl bash


EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 53/udp
VOLUME ["/data"]

ENV SHELL /bin/bash
CMD ["/usr/local/bin/run"]