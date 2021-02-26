## PRERREQUISITOS

***

**1.** [Instalar VirtualBox](https://www.virtualbox.org/wiki/Downloads) (6.1)

**2.** [Instalar Vagrant](https://www.vagrantup.com/downloads) (2.2.14)

**3.** Comprobar que Vagrant se ha instalado correctamente. Ejecutar en la terminal:

```
$ vagrant -v
```

**4.** Clonar este repositorio en un directorio del equipo a elección.

**5.** En la misma terminal, cambiarse al directorio donde se ha clonado el repositorio e instalar los plugins necesarios de las Guest Additions de VirtualBox 

```
<!--- Plugin Guest Additions de VirtualBox --->
$ vagrant plugin install vagrant-vbguest

<!--- Plugin Recarga de MV durante aprovisionamiento --->
$ vagrant plugin install vagrant-reload
```
 
**6.** Por último, comenzar con la instalación de la MV y esperar a que finalice: 

```
$ vagrant up
```

**7.** Para arrancar/apagar el servidor, podemos ejecutar en la MV los siguientes comandos personalizados:

```
$ rails_on

$ rails_off
```

**8.** En el equipo anfitrión, acceder al navegador e ingresar al dirección http://localhost:3000 para ver el sitio en funcionamiento.