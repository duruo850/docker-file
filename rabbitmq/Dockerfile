FROM duruo850/base

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y wget\
 && rm -rf /var/lib/apt/lists/*

RUN DEBIAN_FRONTEND=noninteractive && \
    cd /tmp && \
    wget http://www.rabbitmq.com/rabbitmq-signing-key-public.asc && \
    apt-key add rabbitmq-signing-key-public.asc && \
    echo "deb http://www.rabbitmq.com/debian/ testing main" | tee /etc/apt/sources.list.d/rabbitmq.list && \
    apt-get update && \
    apt-get install -y --force-yes rabbitmq-server && \
    rabbitmq-plugins enable rabbitmq_management && \
    service rabbitmq-server stop && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y psmisc\
 && rm -rf /var/lib/apt/lists/*

ADD run /usr/local/bin/run
ADD first_run /usr/local/bin/first_run
RUN chmod +x /usr/local/bin/*



EXPOSE 5672
EXPOSE 15672

VOLUME ["/var/log/rabbitmq"]
CMD ["/usr/local/bin/run"]

