#!/bin/bash -x

# Build script for jenkins
source "$HOME/.rvm/scripts/rvm"
rvm use `cat .ruby-version`
rvm gemset use `cat .ruby-gemset`
rvm info
rm -f Gemfile.lock
bundle install
bundle exec rake test
bundle exec rake clean build
