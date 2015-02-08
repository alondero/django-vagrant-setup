Vagrant.configure(2) do |config|

	config.vm.box = "puphpet/debian75-x32"
	config.vm.network "forwarded_port", guest: 8091, host: 8891

	config.vm.provider "virtualbox" do |vb|
		vb.memory = "1024"
	end

	config.vm.provision :shell do |shell|
		shell.inline = "mkdir -p /etc/puppet/modules;
			puppet module install stankevich-python"
	end

	config.vm.provision :puppet
end
