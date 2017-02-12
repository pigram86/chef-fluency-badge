#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, Todd Pigram, All Rights Reserved.

if node['platform_family'] == "rhel"
  package = "httpd"
elsif node['platform_family'] == "debian"
  package = "apache2"
end

package 'apache2' do
  package_name package
  action :install
end

service 'apache2' do
  service_name package
  action [ :enable, :start ]
end
