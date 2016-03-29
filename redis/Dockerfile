FROM duruo850/base

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y redis-server=3.0.7 \
 && sed 's/^daemonize yes/daemonize no/' -i /etc/redis/redis.conf \
 && sed 's/^# unixsocket /unixsocket /' -i /etc/redis/redis.conf \
 && sed 's/^# unixsocketperm 755/unixsocketperm 777/' -i /etc/redis/redis.conf \
 && rm -rf /var/lib/apt/lists/*

ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

EXPOSE 6379/tcp
VOLUME ["/var/lib/redis"]
ENTRYPOINT ["/usr/local/bin/run"]
