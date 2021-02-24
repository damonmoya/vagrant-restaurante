# Instalando aplicación RoR
cd /vagrant_data/proyecto_restaurante/
rm -rf * 
rm -rf .git
cp /docker_files/* /vagrant_data/proyecto_restaurante/
touch /vagrant_data/proyecto_restaurante/Gemfile.lock

echo -e "\nInstalando app...\n\n"

docker-compose run --no-deps web rails new . --force --database=postgresql
sudo chown -R $USER:$USER .
docker-compose build

cp /docker_files/database.yml /vagrant_data/proyecto_restaurante/config/database.yml
docker-compose run web rake db:create
# docker-compose up