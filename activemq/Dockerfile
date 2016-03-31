FROM duruo850/ubuntu-oracle-jdk

WORKDIR /usr/local/bin/activemq
ADD apache-activemq-5.13.2-bin.tar.gz /usr/local/bin/

ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

EXPOSE 1883
CMD ["/usr/local/bin/run"]
