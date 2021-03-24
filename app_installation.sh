# Instalando aplicación RoR
#rm -rf /vagrant/proyecto-rails-restaurante/
#[ -d /vagrant/prueba-rails-restaurante/ ] && rm -rf /vagrant/prueba-rails-restaurante/
#[ -d /vagrant/proyecto-rails-restaurante/ ] || mkdir /vagrant/proyecto-rails-restaurante/
#cp /vagrant/docker_files/docker-compose.yml /vagrant/proyecto-rails-restaurante/docker-compose.yml
##
#echo -e "\nInstalando app...\n\n"
#rails new /vagrant/proyecto-rails-restaurante/ --force --database=postgresql -T
#cd /vagrant/proyecto-rails-restaurante/
#sudo chown -R $USER:$USER .
#echo -e "\ngroup :development, :test do" >> ./Gemfile
#echo -e "  gem 'rspec-rails'\n  gem 'factory_bot_rails'\n  gem 'capybara'\n  gem 'webdrivers'\n gem 'selenium-webdriver'" >> ./Gemfile
#echo -e "end" >> ./Gemfile
#bundle install
#docker-compose build
#cp /vagrant/docker_files/database.yml /vagrant/proyecto-rails-restaurante/config/database.yml
#docker-compose up -d
#rails g controller restaurant index
#bundle exec rake db:create db:migrate
#rails g rspec:install
#mkdir ./spec/features
#
#echo -e "<h1>Mi restaurante</h1>" > ./app/views/restaurant/index.html.erb
#
########################
#

#echo -e "Rails.application.routes.draw do" > ./config/routes.rb
#echo -e "   get 'restaurant/index'" >> ./config/routes.rb
#echo -e "   root to: 'restaurant#index'" >> ./config/routes.rb
#echo -e "end" >> ./config/routes.rb
#
#echo -e "require 'rails_helper'" > ./spec/features/restaurant_spec.rb
#echo -e "\nRSpec.describe 'Mi restaurante', type: :feature do" >> ./spec/features/restaurant_spec.rb
#echo -e "  scenario 'index page' do" >> ./spec/features/restaurant_spec.rb
#echo -e "      visit root_path" >> ./spec/features/restaurant_spec.rb
#echo -e "      expect(page).to have_content('Mi restaurante')" >> ./spec/features/restaurant_spec.rb
#echo -e "  end\nend" >> ./spec/features/restaurant_spec.rb
#
#echo -e "require 'rails_helper'" > ./spec/views/restaurant/index.html.erb_spec.rb
#echo -e '\nRSpec.describe "restaurant/index.html.erb", type: :view do' >> ./spec/views/restaurant/index.html.erb_spec.rb
#echo -e "  it 'displays index page' do\n    render" >> ./spec/views/restaurant/index.html.erb_spec.rb
#echo -e "    expect(rendered).to have_content 'Mi restaurante'\n  end\nend" >> ./spec/views/restaurant/index.html.erb_spec.rb

########################
echo -e "\nInstalando app...\n\n"
[ -d /vagrant/proyecto-rails-restaurante/ ] && rm -rf /vagrant/proyecto-rails-restaurante/
cd /vagrant/
git clone https://github.com/damonmoya/proyecto-rails-restaurante.git
cd /vagrant/proyecto-rails-restaurante/
sudo chown -R $USER:$USER .
bundle install
docker-compose build
docker-compose up -d
yarn install --check-files
bundle exec rake db:create db:migrate
rspec
docker-compose down