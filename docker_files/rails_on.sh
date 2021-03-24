#!/bin/bash

cd /vagrant/proyecto-rails-restaurante/
docker-compose up -d
bundle exec rails db:migrate:reset
bundle exec rails s -d -p 3000 -b '0.0.0.0'