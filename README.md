## PRERREQUISITOS

***

**1.** [Instalar Git](https://git-scm.com/downloads)

**2.** [Instalar VirtualBox](https://www.virtualbox.org/wiki/Downloads) (6.1)

**3.** [Instalar Vagrant](https://www.vagrantup.com/downloads) (2.2.14)

**4.** Comprobar que Vagrant se ha instalado correctamente. Ejecutar en la terminal:

```
$ vagrant -v
```

**5.** Clonar este repositorio en un directorio del equipo a elección:

```
$ git clone https://github.com/damonmoya/vagrant-restaurante.git
```

**6.** En la misma terminal, cambiarse al directorio donde se ha clonado el repositorio e instalar los plugins necesarios de las Guest Additions de VirtualBox 

```
<!--- Plugin Guest Additions de VirtualBox --->
$ vagrant plugin install vagrant-vbguest

<!--- Plugin Recarga de MV durante aprovisionamiento --->
$ vagrant plugin install vagrant-reload
```
 
**7.** Por último, comenzar con la instalación de la MV y esperar a que finalice: 

```
$ vagrant up
```

Para acceder a la MV:

```
$ vagrant ssh
```

**8.** Para arrancar/apagar el servidor, podemos ejecutar en la MV los siguientes comandos personalizados dentro de la máquina virtual:

```
$ rails_on

$ rails_off
```

Para poblar la base de datos, se debe cambiar al directorio del proyecto y ejecutar el seed:

```
$ cd /vagrant/proyecto-rails-restaurante/

$ rails db:seed
```

**9.** En el equipo anfitrión, y una vez haya sido arrancado el servidor desde la MV, acceder al navegador e ingresar la dirección http://localhost:3000 para ver el sitio en funcionamiento.

**10.** Para iniciar sesión como administrador, ingresar la dirección http://localhost:3000/admins/sign_in

Las credenciales del administrador son las siguientes:

```
Correo: notificaciones.restauranterails@gmail.com

Clave: uX47t4nDJX3Aj5Vg
```

**Nota:** debe ejecutarse previamente el seed (paso 8) para que sea creado el usuario administrador y poder iniciar sesión.
