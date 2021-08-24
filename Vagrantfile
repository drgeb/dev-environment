Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu2004"
  config.vm.box_version = "3.1.16"
  config.ssh.username = 'vagrant'
  config.ssh.password = 'vagrant'
  config.vm.network "forwarded_port", guest: 21, host:2121

  config.omnibus.chef_version = :latest

  config.vm.provider "virtualbox" do |v|
    v.name = "DRGEB Developer Vagrant"
    v.customize ["modifyvm", :id, "--memory", "4096"]
  end

  config.vm.provision "chef_solo" do |chef|
    chef.install = false
    chef.arguments = "--chef-license accept"
    chef.cookbooks_path = ['.']
    chef.add_recipe "bootstrap"
  end
end
