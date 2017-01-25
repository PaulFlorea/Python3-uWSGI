FROM alpine:latest

RUN apk add --no-cache \
        uwsgi \
        uwsgi-python3