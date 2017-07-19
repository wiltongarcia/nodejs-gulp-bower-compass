FROM node:alpine

MAINTAINER Wilton Garcia <wiltonog@gmail.com>

RUN apk add --no-cache --virtual .build-deps build-base libffi-dev ruby ruby-dev git \
    && gem install sass compass --no-ri --no-rdoc \
    && apk del build-base libffi-dev ruby-dev \
    && rm -rf /var/cache/* /tmp/*

WORKDIR /workspace    

RUN cd /workspace
    && npm install gulp \ 
    && npm installl bower

