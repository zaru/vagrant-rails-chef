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
    database_name "my_app"
    privileges [:all]
    action [:create, :grant]
end

mysql_database_user "app" do
    connection mysql_connection_info
    password "passw0rd"
    database_name "my_app"
    privileges [:select, :update, :insert, :delete]
    action [:create, :grant]
end