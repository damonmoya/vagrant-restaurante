#!/bin/bash

PID="/vagrant/proyecto_restaurante/tmp/pids/server.pid"
if [ -f "$PID" ]; then
  echo -e "\n***** ¡El servidor ya ha sido iniciado! *****\n\n"
else
    cd /vagrant/proyecto_restaurante/
    docker-compose up -d
    bundle exec rails db:migrate:reset
    bundle exec rails s -d -p 3000 -b '0.0.0.0'
fi