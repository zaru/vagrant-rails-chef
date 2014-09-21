#
# Cookbook Name:: mysql-pkg
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'database::mysql'

mysql_connection_info = {
    :host => "localhost",
    :username => 'root',
    :password => node['mysql']['server_root_password']
}

mysql_database "my_app" do
    connection mysql_connection_info
    action :create
end

mysql_database_user "admin" do
    connection mysql_connection_info
    password "passw0rd"
    privileges [:all]
    action [:create, :grant]
end

