#
# Cookbook Name:: apache1
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

#
#install/Updating packages



execute "yum upgrade -y" do
	command "yum upgrade -y"
end


execute node["package_name1"] do
  command node["package_name1"]
end

package node["package_name2"] do
  action :install
end

#make sure service starts at reboot

service node["service_name"] do
	action [:enable, :start]

end

#writing something to home page

#cookbook_file "#{file_name}/index.html" do
#	source "index.html"
#	mode "0644"
#end

template "#{node["file_name"]}/index.html" do
  source "index.html.erb"
  mode "0666"
end
