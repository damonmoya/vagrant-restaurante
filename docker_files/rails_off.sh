#!/bin/bash

cd /vagrant/prueba-rails-restaurante/
sudo kill $(cat /vagrant/prueba-rails-restaurante/tmp/pids/server.pid)
docker-compose down