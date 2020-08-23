ARG RUBY_IMAGE=ruby:2.7-alpine
FROM $RUBY_IMAGE

RUN apk add --no-cache --update build-base linux-headers git

ENV APP_HOME /usr/src/app/
ENV BUNDLE_PATH /gems

RUN mkdir ${APP_HOME}
RUN mkdir ${BUNDLE_PATH}

VOLUME ${APP_HOME}
VOLUME ${BUNDLE_PATH}

COPY . ./ 

WORKDIR ${APP_HOME}

RUN bundle 
COPY . ${APP_HOME}