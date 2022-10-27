# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  if Vagrant.has_plugin? "vagrant-vbguest"
    config.vbguest.no_install  = true
    config.vbguest.auto_update = false
    config.vbguest.no_remote   = true
    config.vm.provision "shell", path: "consul.sh"
  end

  config.vm.define :balancerServer do |balancerServer|
    balancerServer.vm.box = "bento/ubuntu-20.04"
    balancerServer.vm.network :private_network, ip: "192.168.100.20"
    balancerServer.vm.hostname = "balancerServer"
    balancerServer.vm.provision "shell", path: "haproxy.sh"
    balancerServer.vm.provision "shell", path: "nodejs.sh"
  end

  config.vm.define :consulServer do |consulServer|
    consulServer.vm.box = "bento/ubuntu-20.04"
    consulServer.vm.network :private_network, ip: "192.168.100.30"
    consulServer.vm.hostname = "consulServer"   
  end
  
    config.vm.synced_folder ".", "/var/www"
    
end


