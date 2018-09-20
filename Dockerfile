FROM maven:3.5-jdk-8-alpine

RUN apk update && \
    apk add git bash

RUN mkdir -p /app && \
    git clone https://github.com/iroks/Icecast2GoogleAnalytics.git /tmp/Icecast2GoogleAnalytics && \
    mv /tmp/Icecast2GoogleAnalytics/* /app/ && \
    rm -rf /tmp/Icecast2GoogleAnalytics

WORKDIR /app

RUN cd /app && \
    mvn package

COPY src/bootstrap.sh /bootstrap.sh

CMD ["sh", "/bootstrap.sh"]
