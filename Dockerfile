FROM index.tenxcloud.com/docker_library/ruby:2.3.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /webapp
WORKDIR /webapp
ADD Gemfile /webapp/Gemfile
ADD Gemfile.lock /webapp/Gemfile.lock
RUN bundle config mirror.https://rubygems.org https://gems.ruby-china.org
RUN bundle install
ADD . /webapp
