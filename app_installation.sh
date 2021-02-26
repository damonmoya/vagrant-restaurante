# Instalando aplicación RoR
rm -rf /vagrant/proyecto_restaurante/
[ -d /vagrant/proyecto_restaurante/ ] || mkdir /vagrant/proyecto_restaurante/
cd /vagrant/proyecto_restaurante/
cp /vagrant/docker_files/docker-compose.yml /vagrant/proyecto_restaurante/docker-compose.yml

echo -e "\nInstalando app...\n\n"
rails new /vagrant/proyecto_restaurante --force --database=postgresql
sudo chown -R $USER:$USER .
docker-compose build
cp /vagrant/docker_files/database.yml /vagrant/proyecto_restaurante/config/database.yml
docker-compose up -d
bundle exec rake db:create