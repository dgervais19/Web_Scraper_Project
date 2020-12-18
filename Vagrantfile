# Install required plugins
required_plugins = ["vagrant-hostsupdater"]
required_plugins.each do |plugin|
    exec "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
end

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.network "private_network", ip: "192.168.10.200"
  # config.hostsupdater.aliases = ["dev.local"]
  config.vm.synced_folder "DevOpsProject-ItJobsWatch-master", "/home/vagrant/DevOpsProject-ItJobsWatch-master"
  config.vm.provision "shell", path: "provision_dev.sh", privileged: false
end