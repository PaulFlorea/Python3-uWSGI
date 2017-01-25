FROM alpine:latest

RUN apk add --no-cache --update \
        uwsgi \
        uwsgi-python3 \
        py-pip