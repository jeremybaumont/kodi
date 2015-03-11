#
# Cookbook Name:: kodi
# Recipe:: default
#
# Copyright (C) 2015 Jeremy Baumont
#
# All rights reserved - Do Not Redistribute
#

include_recipe "apt::default"

case node['platform_family']
when 'debian'
   
  # Install packages required
  node['kodi']['packages']['required'].each do |name|
    if name.last['preferences']
      apt_preference name.first do
	pin name.last['preferences']['pin']
	pin_priority name.last['preferences']['pin_priority']
	notifies :run, 'execute[apt-get update]', :immediately
      end
    end

      package name.first
  end

  # Install kodi repositories and packages
  node['kodi']['apt']['repositories'].each do |name|
    apt_repository "#{name.first}" do
      uri name.last['uri']
      distribution name.last['distribution']
    end
  end

  node['kodi']['main-packages'].each do |name|
      package name
  end

else
  Chef::Log.fatal("Platform #{node['platorm_familly']} not supported")
end
