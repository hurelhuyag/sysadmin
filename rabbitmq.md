# RabbitMQ

## Install

Энд тохируулсан зааврын дагуу тохирох хувилбарыг сонгож суулгана

https://www.rabbitmq.com/install-debian.html#apt


## Choose required plugins

```
rabbitmq-plugins enable rabbitmq_management
rabbitmq-plugins enable rabbitmq_stomp
rabbitmq-plugins enable rabbitmq_mqtt

```

## Add admin user

```
rabbitmqctl add_user hurelhuyag 12345678#
rabbitmqctl set_user_tags hurelhuyag administrator
rabbitmqctl set_permissions -p / hurelhuyag ".*" ".*" ".*"

```

## Managment plugin

http://localhost:15672/
