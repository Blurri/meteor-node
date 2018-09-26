
FROM node:8.11.4

MAINTAINER Gabor Raz

RUN apt-get update \
    && apt-get update >/dev/null \
    && apt-get install -y curl \
    && curl https://install.meteor.com/ | sh \
    && meteor npm install -g yarn