FROM duruo850/base


ENV REDIS_USER redis
RUN addgroup $REDIS_USER && useradd -p "S0dAmthh3vjPQ" -g $REDIS_USER $REDIS_USER

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y g++ wget make\
 && rm -rf /var/lib/apt/lists/*
 
RUN cd /usr/local/bin \
 && wget http://download.redis.io/releases/redis-3.0.7.tar.gz \
 && tar zxvf redis-3.0.7.tar.gz \
 && cd redis-3.0.7 \
 && make \
 && cd .. \
 && cp redis-3.0.7/src/redis-server ./ \
 && cp redis-3.0.7/redis.conf ./ \
 && rm -f redis-3.0.7.tar.gz \
 && rm -rf redis-3.0.7
 
ADD run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run

EXPOSE 6379/tcp
VOLUME ["/var/lib/redis"]
CMD ["/usr/local/bin/run"]
