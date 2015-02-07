Vagrant.configure(2) do |config|

  config.vm.box = "puphpet/debian75-x32"

  config.vm.network "forwarded_port", guest: 8891, host: 8091

   config.vm.provider "virtualbox" do |vb|
     vb.memory = "1024"
   end
   
   config.vm.provision :puppet

end
