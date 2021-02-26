# PASOS DE INSTALACIÓN

1. Instalar VirtualBox (6.1) -> https://www.virtualbox.org/wiki/Downloads

2. Instalar Vagrant (2.2.14) -> https://www.vagrantup.com/downloads

3. Comprobar que Vagrant se ha instalado correctamente (ejecutar en la terminal: vagrant -v)

4. Clonar este repositorio en un directorio del equipo a elección. Crear los subdirectorios "vagrant_data" y "vagrant_data/proyecto_restaurante".

5. En la terminal, cambiarse al directorio e instalar el plugin de las Guest Additions de VirtualBox (vagrant plugin install vagrant-vbguest)

6. En el mismo directorio, instalar el plugin para Docker Compose (vagrant plugin install vagrant-docker-compose)

7. En el mismo directorio, instalar el plugin para recargar la MV durante el aprovisionamiento (vagrant plugin install vagrant-reload)

8. Por último, comenzar con la instalación de la MV (vagrant up) y esperar a que finalice. 

9. Para arrancar el servidor, acceder a la máquina virtual (vagrant ssh) y poner en marcha el contenedor:

    - cd /vagrant_data/proyecto_restaurante/

    - docker-compose up

10. En el equipo anfitrión, acceder al navegador e ingresar al dirección http://localhost:3000 para ver el sitio en funcionamiento.
