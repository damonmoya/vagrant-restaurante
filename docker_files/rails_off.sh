#!/bin/bash

cd /vagrant/proyecto-rails-restaurante/
sudo kill $(cat /vagrant/proyecto-rails-restaurante/tmp/pids/server.pid)
docker-compose down