#!/bin/bash

cd /vagrant/proyecto_restaurante/
sudo kill $(cat /vagrant/proyecto_restaurante/tmp/pids/server.pid)
docker-compose down