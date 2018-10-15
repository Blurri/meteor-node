
FROM node:8.12.0

MAINTAINER Gabor Raz

RUN apt-get update \
    && apt-get update >/dev/null \
    && apt-get install -y curl \
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list \
    && sudo apt-get update && sudo apt-get install yarn \
    && curl https://install.meteor.com/ | sh
    