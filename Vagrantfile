Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu2004"
  config.vm.box_version = "3.1.16"

  config.vm.provision "chef_solo" do |chef|
    chef.add_recipe "bootstrap"
  end
end
