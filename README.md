# flower-docker
Flower docker container for real-time monitoring using Celery Events

# How to use this image
## Start a flower instance
```
docker run -it -p 5555:5555 -e AMQP_USER=rabbitmq -e AMQP_PASS=rabbitmq -e AMQP_HOST=192.168.20.119 tuananhbienbk/flower-docker
```

## Environment variables
| Env Variable | Description | Default Value|
| ------------ | ----------- |--------------------- |
| FLOWER_PORT | Port to be used by flower | 5555 |
| AMQP_USER | Rabbitmq broker username | guest |
| AMQP_PASS | Rabbitmq broker password | guest |
| AMQP_HOST | Rabbitmq host | localhost |
| AMQP_PORT | Rabbitmq port | 5672 |
