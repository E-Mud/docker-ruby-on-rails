FROM ruby:2.4

RUN apt-get update && apt-get install -qq -y build-essential libpq-dev

ENV NVM_DIR=/usr/local/nvm

RUN wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash \
    && . $NVM_DIR/nvm.sh \
    && nvm install --lts \
    && nvm use --lts

RUN gem install rails -v 5

ENTRYPOINT ["rails"]
