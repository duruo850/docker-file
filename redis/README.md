# Introduction

Redis is an open source, BSD licensed, advanced key-value cache and store. 
It is often referred to as a data structure server since keys can contain strings, hashes, lists, sets, sorted sets, bitmaps and hyperloglogs.


#Environment variables

- `REDIS_PASSWORD`: The password for the redis security

#Example usage: 

## Common


```sudo docker run -d -p 16379:6379 -e REDIS_PASSWORD=xxxxx duruo850/redis
```

## Command-line arguments

You can customize the launch command of Redis server by specifying arguments to `redis-server` on the `docker run` command. For example the following command will enable the Append Only File persistence mode:

```sudo docker run --name redis -d \
 --restart=always \
 -p 6379:6379 \
 --volume /srv/docker/redis:/var/lib/redis \
 duruo850/redis --appendonly yes
```

Please refer to http://redis.io/topics/config for further details.

## Authentication

To secure your Redis server with a password, specify the password in the `REDIS_PASSWORD` variable while starting the container.

```sudo docker run --name redis -d \
  -p 6379:6379 \
  -e REDIS_PASSWORD=redispassword \
  --restart=always \
  --volume /srv/docker/redis:/var/lib/redis \
  duruo850/redis
```

Clients connecting to the Redis server will now have to authenticate themselves with the password `redispassword`.

Alternatively, the same can also be achieved using the [Command-line arguments](#command-line-arguments) feature to specify the `--requirepass` argument.

## Logs

By default the Redis server logs are sent to the standard output. Using the [Command-line arguments](#command-line-arguments) feature you can configure the Redis server to send the log output to a file using the `--logfile` argument:

```sudo docker run --name redis -d --restart=always \
  --publish 6379:6379 \
  --volume /srv/docker/redis:/var/lib/redis \
  duruo850/redis --logfile /var/log/redis/redis-server.log
```


 