# Introduction

Openfire is a real time collaboration (RTC) server licensed under the Open Source Apache License. It uses the only widely adopted open protocol for instant messaging, XMPP (also called Jabber). Openfire is incredibly easy to setup and administer, but offers rock-solid security and performance.


#Environment variables

- `MYSQL_HOST`= The mysql host for the openfire service
- `MYSQL_PORT`=The mysql port for the openfire service, 3306 default
- `MYSQL_USER`=The mysql user for the openfire service
- `MYSQL_PASS`=The mysql pass for the openfire service
- `MYSQL_DB`=The mysql database for the openfire service, openfire default

#Example usage

## Common


```sudo docker run -d -p 16379:6379 -e REDIS_PASSWORD=xxxxx duruo850/redis
```

