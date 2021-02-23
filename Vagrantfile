Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.network "forwarded_port", guest: 3000, host: 3000

  config.vm.synced_folder "./vagrant_data", "/vagrant_data"
  
  config.vm.provider "virtualbox" do |vb|
  
    vb.memory = "4096"
	
	vb.cpus = "2"
	
  end

  config.vm.provision :shell, path: "installation.sh", privileged: false
  
  config.vm.provision :shell, path: "docker_installation.sh", privileged: false
  
end