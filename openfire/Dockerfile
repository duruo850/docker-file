FROM duruo850/ubuntu-oracle-jdk

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y wget mysql-client\
 && rm -rf /var/lib/apt/lists/*
 
ENV OPENFIRE_VERSION=4.0.2

WORKDIR /usr/local/bin
RUN wget "http://download.igniterealtime.org/openfire/openfire_${OPENFIRE_VERSION}_all.deb" -O /tmp/openfire_${OPENFIRE_VERSION}_all.deb \
 && dpkg -i /tmp/openfire_${OPENFIRE_VERSION}_all.deb \
 && rm -rf openfire_${OPENFIRE_VERSION}_all.deb
 
 
# Openfire configurations.
COPY conf /data/etc

# Add openfire plugins from igniterealtime.
WORKDIR /usr/share/openfire/plugins
ADD http://www.igniterealtime.org/projects/openfire/plugins/dbaccess.jar /usr/share/openfire/plugins/dbaccess.jar
ADD http://www.igniterealtime.org/projects/openfire/plugins/userservice.jar /usr/share/openfire/plugins/userservice.jar
RUN unzip dbaccess.jar -d /usr/share/openfire/plugins/dbaccess && \
    unzip userservice.jar -d /usr/share/openfire/plugins/userservice
 
ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

EXPOSE 3478/tcp 3479/tcp 5222/tcp 5223/tcp 5229/tcp 7070/tcp 7443/tcp 7777/tcp 9090/tcp 9091/tcp
CMD ["/usr/local/bin/run"]
