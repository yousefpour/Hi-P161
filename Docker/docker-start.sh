#!/bin/bash

touch Gemfile.lock
docker-compose run --no-deps web rails new . --force --database=postgresql
docker-compose build
echo 'default: &default
  adapter: postgresql
  encoding: unicode
  host: db
  username: postgres
  password: password
  pool: 5
development:
  <<: *default
  database: myapp_development
test:
  <<: *default
  database: myapp_test' > config/database.yml
docker-compose up -d
docker-compose run web rake db:create
docker-compose up -d
cp -rf ../app/* .
