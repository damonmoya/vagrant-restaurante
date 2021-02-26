# Instalando Ruby on Rails
sudo apt-get -y update
apt-get -y install --install-recommends linux-generic-lts-xenial
sudo apt-get -y update
sudo apt-get -y install -y autoconf automake bison libc6-dev build-essential curl g++ gcc git libffi-dev libgconf-2-4 libgdbm-dev \
		libncurses5-dev libreadline-dev libreadline-dev libsqlite3-dev libtool libssl-dev libxi6 \
		libyaml-dev make pkg-config sqlite3 xvfb zip zlib1g-dev libgmp-dev libpq-dev
sudo curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get -y install -y nodejs
sudo curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt -y update && sudo apt install -y yarn
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm fix-permissions system
rvm fix-permissions user -
rvm install ruby-2.6.5
rvm --default use ruby-2.6.5
gem install rails --version=6.0.1
sudo curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get -y update
sudo apt-get -y install google-chrome-stable
wget https://chromedriver.storage.googleapis.com/2.41/chromedriver_linux64.zip
unzip chromedriver_linux64.zip	
sudo mv chromedriver /usr/bin/chromedriver	
sudo chown root:root /usr/bin/chromedriver	
sudo chmod +x /usr/bin/chromedriver

# Instalando Docker y Docker Compose
sudo apt-get -y update
sudo apt-get -y install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get -y update
sudo apt-get -y install docker-ce=18.06.1~ce~3-0~ubuntu
sudo usermod -aG docker vagrant
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.4/docker-compose-$(uname -s)-$(uname -m)" \
	-o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo usermod -aG docker $USER

# Añadiendo scripts para arrancar/parar el servidor de Rails
echo 'export PATH=$PATH:~/bin' >> .bashrc
mkdir ~/bin 
cd ~/bin 
cp /vagrant/docker_files/{rails_on.sh,rails_off.sh} ~/bin
mv rails_on.sh rails_on | mv rails_off.sh rails_off
chmod +x ~/bin/*