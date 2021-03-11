# Instalando aplicación RoR
rm -rf /vagrant/proyecto_restaurante/
[ -d /vagrant/proyecto_restaurante/ ] || mkdir /vagrant/proyecto_restaurante/
cd /vagrant/proyecto_restaurante/
cp /vagrant/docker_files/docker-compose.yml /vagrant/proyecto_restaurante/docker-compose.yml

echo -e "\nInstalando app...\n\n"
rails new /vagrant/proyecto_restaurante --force --database=postgresql -T
sudo chown -R $USER:$USER .
echo -e "\ngroup :development, :test do" >> ./Gemfile
echo -e "  gem 'rspec-rails'\n  gem 'factory_bot_rails'\n  gem 'capybara'\n  gem 'webdrivers'\n gem 'selenium-webdriver'" >> ./Gemfile
echo -e "end" >> ./Gemfile
bundle install
docker-compose build
cp /vagrant/docker_files/database.yml /vagrant/proyecto_restaurante/config/database.yml
docker-compose up -d
rails g controller hello_world index
bundle exec rake db:create db:migrate
rails g rspec:install
mkdir ./spec/features

echo -e "Hello, world!" > ./app/views/hello_world/index.html.erb

#######################

echo -e "require 'rails_helper'" > ./spec/features/hello_world_spec.rb
echo -e "\nRSpec.describe 'Hello world', type: :feature do" >> ./spec/features/hello_world_spec.rb
echo -e "  scenario 'index page' do" >> ./spec/features/hello_world_spec.rb
echo -e "      visit hello_world_index_path" >> ./spec/features/hello_world_spec.rb
echo -e "      expect(page).to have_content('Hello, world!')" >> ./spec/features/hello_world_spec.rb
echo -e "  end\nend" >> ./spec/features/hello_world_spec.rb

echo -e "require 'rails_helper'" > ./spec/views/hello_world/index.html.erb_spec.rb
echo -e '\nRSpec.describe "hello_world/index.html.erb", type: :view do' >> ./spec/views/hello_world/index.html.erb_spec.rb
echo -e "  it 'displays index page' do\n    render" >> ./spec/views/hello_world/index.html.erb_spec.rb
echo -e "    expect(rendered).to have_content 'Hello, world!'\n  end\nend" >> ./spec/views/hello_world/index.html.erb_spec.rb

########################

rspec