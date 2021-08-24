#
# Cookbook:: bootstrap
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.
directory '/home/vagrant/.ssh' do
    owner 'vagrant'
    group 'vagrant'
    mode '0700'
    action :create
end

cookbook_file '/home/vagrant/.ssh/id_rsa_bb' do
    source 'id_rsa_bb'
    owner 'vagrant'
    group 'vagrant'
    mode '0600'
    action :create
end

cookbook_file '/home/vagrant/.ssh/config' do
    source 'config'
    owner 'vagrant'
    group 'vagrant'
    mode '0600'
    action :create
end

cookbook_file '/home/vagrant/.ssh/.ansible_vault_system_configs' do
    source 'ansible_vault_system_configs'
    owner 'vagrant'
    group 'vagrant'
    mode '0600'
    action :create
end
