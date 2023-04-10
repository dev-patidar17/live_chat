FROM maven:3.8.7-openjdk-18-slim AS build

COPY target/live_chat-0.0.1-SNAPSHOT.jar .
ENTRYPOINT ["/bin/sh", "-c", "java -jar /live_chat-0.0.1-SNAPSHOT.jar"]

ENV spring_rabbitmq_host=https://rabbit-live-chat-eqp67m5xbq-el.a.run.app
ENV spring_rabbitmq_port=5672
ENV spring_rabbitmq_username=guest
ENV spring_rabbitmq_password=guest
ENV resolute_rabbitmq_publishQueueName=resolute-run-request
ENV resolute_rabbitmq_exchange=resolute