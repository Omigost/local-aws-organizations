FROM python:2.7.14-alpine3.7

MAINTAINER Piotr Styczynski

RUN apk update && apk upgrade
RUN apk add --no-cache openssl-dev libffi-dev musl-dev gcc
RUN pip install moto && pip install flask

VOLUME /opt/moto

ADD start.sh .
RUN chmod +x start.sh

EXPOSE 5000

ENTRYPOINT ./start.sh
