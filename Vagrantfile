Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu2004"
  config.vm.box_version = "3.1.16"
  config.ssh.username = 'vagrant'
  config.ssh.password = 'vagrant'
  config.vm.network "forwarded_port", guest: 21, host:2121

  config.omnibus.chef_version = :latest

  if Vagrant.has_plugin?("vagrant-vbguest") then
    config.vbguest.auto_update = false
  end

  config.vm.provider "virtualbox" do |v|
    v.name = "DRGEB Developer Vagrant"
#    v.customize ["modifyvm", :id, "--memory", "8192"]
    v.customize ["modifyvm", :id, "--cpus", `awk "/^processor/ {++n} END {print n}" /proc/cpuinfo 2> /dev/null || sh -c 'sysctl hw.logicalcpu 2> /dev/null || echo ": 2"' | awk \'{print \$2}\' `.chomp ]

  end

  config.vm.network "forwarded_port", guest: 443, host: 8443, protocol: "tcp"

  config.vm.provision "chef_solo" do |chef|
    chef.install = false
    chef.arguments = "--chef-license accept"
    chef.cookbooks_path = ['.']
    chef.add_recipe "bootstrap"
  end
end
