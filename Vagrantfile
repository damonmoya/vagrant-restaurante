Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.network "forwarded_port", guest: 3000, host: 3000

  #config.vm.synced_folder "./vagrant_data", "/vagrant_data"
  #config.vm.synced_folder "./docker_files", "/docker_files"
  
  config.vm.provider "virtualbox" do |vb|
  
    vb.name = "app-restaurante"

    vb.memory = "4096"
	
	  vb.cpus = "2"
	
  end

  config.vm.provision :shell, path: "installation.sh", privileged: false

  #config.vm.provision :docker
  #config.vm.provision :docker_compose
  
  #config.vm.provision :shell, path: "docker_installation.sh", privileged: false

  # trigger reload
  config.vm.provision :reload

  config.vm.provision :shell, path: "app_installation.sh", privileged: false
  
end