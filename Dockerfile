FROM alpine:3.6

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories;\
    echo 'http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories;\
    apk upgrade --update-cache --available

# Install python 3, uwsgi, pip
RUN apk update && apk upgrade && apk add --no-cache --update \
        uwsgi \
        uwsgi-python3 \
        py-pip \
        g++ \
    && rm -rf /var/cache/apk/* # Delete the cache folder to save some space
