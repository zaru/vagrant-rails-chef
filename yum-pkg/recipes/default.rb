#
# Cookbook Name:: test
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#


#include_recipe 'yum'

%w[openssl openssl-devel sqlite sqlite-devel].each do |pkg|
	package pkg do
		action :install
	end
end
