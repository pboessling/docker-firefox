FROM ubuntu:14.04

RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y sudo curl firefox default-jre git \
  && curl -sL https://deb.nodesource.com/setup_8.x | bash - \
  && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list \
  && apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs yarn \
  && rm -rf ~/.npm \
  && rm -rf /var/lib/apt/lists/*

VOLUME /app

WORKDIR /app
