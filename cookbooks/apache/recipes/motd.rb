#
# Cookbook:: apache
# Recipe:: motd
#
# Copyright:: 2017, The Authors, All Rights Reserved.
hostanme = node['hostname']

file '/etc/motd' do
  content "Hostname is this: #{hostanme}"
  owner 'root'
  group 'root'
  mode 00755
  action :create
end
