FROM python:alpine3.6

# Install uwsgi
RUN apk update && apk upgrade && apk add --no-cache --update \
        g++ \
        uwsgi-python3 \
        && rm -rf /var/cache/apk/* # Delete the cache folder to save some space