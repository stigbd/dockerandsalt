
Vagrant.configure(2) do |config|

  # **** apache - simple http server **** 

  config.vm.define "apache" do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.hostname = "apache"

    config.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--memory", "2048"]
    end
    
    config.vm.synced_folder "salt", "/srv/salt"

    config.vm.network "private_network", ip: "192.168.51.2"
    config.vm.network :forwarded_port, guest: 80, host: 8089

    config.vm.provision :salt do |salt|
      salt.minion_config = "salt/minion"
      salt.run_highstate = true
      salt.verbose = true
    end  
  end # apache

end
