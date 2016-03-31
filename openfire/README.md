# Introduction

Openfire is a real time collaboration (RTC) server licensed under the Open Source Apache License. It uses the only widely adopted open protocol for instant messaging, XMPP (also called Jabber). Openfire is incredibly easy to setup and administer, but offers rock-solid security and performance.


# Environment variables

- `ADMIN_PASSWD`=The default passwd for admin account, admin default
- `MYSQL_HOST`= The mysql host for the openfire service
- `MYSQL_PORT`=The mysql port for the openfire service, 3306 default
- `MYSQL_USER`=The mysql user for the openfire service
- `MYSQL_PASS`=The mysql pass for the openfire service
- `MYSQL_DB`=The mysql database for the openfire service, openfire default

# Example usage

## Common


```sudo docker run -d -p 13478:3478 -p 13479:3479 -p 15222:5222 -p 15223:5223 -p 15229:5229 -p 17070:7070 -p 17777:7777 -p 19090:9090 -p 19091:9091 -e ADMIN_PASSWD=xxxxx -e MYSQL_HOST=xxxxx -e MYSQL_PORT=3306 -e MYSQL_USER=xxxxx -e MYSQL_PASS=xxxxx duruo850/openfire
```

