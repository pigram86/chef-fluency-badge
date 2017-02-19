#
# Cookbook:: apache
# Recipe:: websites
#
# Copyright:: 2017, Todd Pigram, All Rights Reserved.


file 'default www' do
  path '/var/www/html/index.html'
  content 'Hellow World!'
  owner 'root'
  group 'root'
  mode 00755
  action :create
end

webnodes = search('node', 'role:web')

webnodes.each do |node|
  puts node
end
