FROM duruo850/ubuntu-oracle-jdk

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y wget\
 && rm -rf /var/lib/apt/lists/*


ENV ACTIVEMQ_VERSION 5.13.2
ENV ACTIVEMQ apache-activemq-$ACTIVEMQ_VERSION

ENV ACTIVEMQ_HOME /usr/local/bin/activemq

RUN \
    apt-get update && \
    apt-get install -y wget && \
    wget -nv http://archive.apache.org/dist/activemq/$ACTIVEMQ_VERSION/$ACTIVEMQ-bin.tar.gz && \
    apt-get remove -y --purge wget && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists && \
    tar xf $ACTIVEMQ-bin.tar.gz -C /usr/local/bin/ && \
    rm $ACTIVEMQ-bin.tar.gz && \
    ln -s /opt/$ACTIVEMQ $ACTIVEMQ_HOME

WORKDIR $ACTIVEMQ_HOME

ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

EXPOSE 1883
CMD ["/usr/local/bin/run"]
