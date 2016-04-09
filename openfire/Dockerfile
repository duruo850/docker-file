FROM duruo850/ubuntu-oracle-jdk

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y wget unzip mysql-client\
 && rm -rf /var/lib/apt/lists/*
 
ENV OPENFIRE_VERSION=4_0_2

WORKDIR /usr/local/bin
RUN wget "http://www.igniterealtime.org/downloadServlet?filename=openfire/openfire_${OPENFIRE_VERSION}.tar.gz" -O openfire_${OPENFIRE_VERSION}.tar.gz \
 && tar zxvf openfire_${OPENFIRE_VERSION}.tar.gz \
 && rm -rf openfire_${OPENFIRE_VERSION}.tar.gz
 
# Openfire configurations.
COPY openfire.xml openfire/conf/

# Add openfire plugins from igniterealtime.
ADD http://www.igniterealtime.org/projects/openfire/plugins/dbaccess.jar openfire/plugins/dbaccess.jar
ADD http://www.igniterealtime.org/projects/openfire/plugins/userservice.jar openfire/plugins/userservice.jar

WORKDIR /usr/local/bin/openfire/plugins
RUN unzip dbaccess.jar  -d /usr/local/bin/openfire/plugins/dbaccess&& \
    unzip userservice.jar -d /usr/local/bin/openfire/plugins/userservice
	
	
WORKDIR /usr/local/bin
 
ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

EXPOSE 3478/tcp 3479/tcp 5222/tcp 5223/tcp 5229/tcp 7070/tcp 7443/tcp 7777/tcp 9090/tcp 9091/tcp
CMD ["/usr/local/bin/run"]
