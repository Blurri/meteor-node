
FROM node:8.12.0

MAINTAINER Gabor Raz

RUN apt-get update \
    && apt-get update >/dev/null \
    && apt-get install -y curl \
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update && apt-get install yarn \
    && curl https://install.meteor.com/ | sh
