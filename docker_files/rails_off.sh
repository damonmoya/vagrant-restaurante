#!/bin/bash

PID="/vagrant/proyecto_restaurante/tmp/pids/server.pid"
if [ -f "$PID" ]; then
    cd /vagrant/proyecto_restaurante/
    sudo kill $(cat /vagrant/proyecto_restaurante/tmp/pids/server.pid)
    docker-compose down
else
    echo -e "\n***** ¡El servidor ya está apagado! *****\n\n"
fi