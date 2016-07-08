# Introduction

RabbitMQ ships in a state where it can be used straight away in simple cases - just start the server and it's ready to go. 
If you have more complex needs you may need to adjust your server configuration.


# Environment variables

- `RABBITMQ_USERNAME`= The default username
- `RABBITMQ_PASSWORD`= The default passwd
- `RABBITMQ_VHOST`=vhost


# Example usage

## Common


```sudo docker run -d --name rabbitmq -p 5672:5672 -p 15672:15672  -e RABBITMQ_USERNAME=system -e RABBITMQ_PASSWORD=System  duruo850/rabbitmq
```

