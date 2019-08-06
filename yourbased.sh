#!/usr/bin/env bash
set -ex
apt-get update
export DEBIAN_FRONTEND=noninteractive
apt-get install -y libmysqlclient-dev postgresql libpq-dev
bundle install --jobs=3 --retry=3
bundle exec rake
