

# duruo850/redis
====================

- [Introduction](#introduction)
- [Getting started](#getting-started)
  - [Installation](#installation)
  - [Quickstart](#quickstart)
  - [Command-line arguments](#command-line-arguments)
  - [Persistence](#persistence)
  - [Authentication](#authentication)
  - [Logs](#logs)
- [Environment Variables](#environment-variables)

# Introduction

Redis is an open source, BSD licensed, advanced key-value cache and store. It is often referred to as a data structure server since keys can contain strings, hashes, lists, sets, sorted sets, bitmaps and hyperloglogs.


# Getting started

## Installation

Automated builds of the image are available on [Dockerhub](https://hub.docker.com/r/duruo850/redis) and is the recommended method of installation.

```bash
docker pull duruo850/redis
```

## Quickstart

Start Redis using:

```bash
docker run --name redis -d --restart=always \
  --publish 6379:6379 \
  --volume /srv/docker/redis:/var/lib/redis \
  duruo850/redis
```

## Command-line arguments

You can customize the launch command of Redis server by specifying arguments to `redis-server` on the `docker run` command. For example the following command will enable the Append Only File persistence mode:

```bash
docker run --name redis -d --restart=always \
  --publish 6379:6379 \
  --volume /srv/docker/redis:/var/lib/redis \
  duruo850/redis --appendonly yes
```

Please refer to http://redis.io/topics/config for further details.

## Persistence

For Redis to preserve its state across container shutdown and startup you should mount a volume at `/var/lib/redis`.

> *The [Quickstart](#quickstart) command already mounts a volume for persistence.*

SELinux users should update the security context of the host mountpoint so that it plays nicely with Docker:

```bash
mkdir -p /srv/docker/redis
chcon -Rt svirt_sandbox_file_t /srv/docker/redis
```

## Authentication

To secure your Redis server with a password, specify the password in the `REDIS_PASSWORD` variable while starting the container.

```bash
docker run --name redis -d \
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

```bash
docker run --name redis -d --restart=always \
  --publish 6379:6379 \
  --volume /srv/docker/redis:/var/lib/redis \
  duruo850/redis --logfile /var/log/redis/redis-server.log
```

To access the Redis logs you can use `docker exec`. For example:

```bash
docker exec -it redis tail -f /var/log/redis/redis-server.log
```


# Environment variables


 - `REDIS_PASSWORD`: The password for the redis security
 - `BIND_IP`: The access ip banding for the redis server