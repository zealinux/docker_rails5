#!/bin/bash

# bundle config mirror.https://rubygems.org https://gems.ruby-china.org
bundle check || bundle install

rm -f tmp/pids/server.pid

bin/rails s -p 3000 -b '0.0.0.0'

