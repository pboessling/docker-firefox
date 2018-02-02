FROM node:6.12.3

RUN set -xe \
  && apt-get update \
  && apt-get install -y sudo fontconfig firefox-esr \
  && rm -rf ~/.npm \
  && npm cache clear --force \
  && rm -rf /var/lib/apt/lists/*

VOLUME /app

WORKDIR /app