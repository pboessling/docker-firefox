FROM ubuntu:14.04

RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y sudo curl firefox git \
  && curl -sL https://deb.nodesource.com/setup_6.x | bash - \
  && apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs \
  && rm -rf ~/.npm \
  && rm -rf /var/lib/apt/lists/*

VOLUME /app

WORKDIR /app
