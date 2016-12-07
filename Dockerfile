# index.tenxcloud.com/docker_library/
FROM ruby:2.3.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

ENV WEB_APP /webapp
RUN mkdir $WEB_APP
WORKDIR $WEB_APP

ENV BUNDLE_PATH /bundle

ADD . $WEB_APP

