# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  config.vm.box = "ubuntu/xenial64"

  config.vm.network "private_network", ip: "192.168.33.11"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "2048"
  end

 
  config.vm.provision "shell", path: "provision/install_mysql.sh"
  config.vm.provision "shell", path: "provision/install_apache2.sh"
  config.vm.provision "shell", path: "provision/install_xdebug.sh"

end
