#
# Cookbook Name:: df_ruby
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#


# this will set up the path for the ruby used in the omnibus installer.
file "/etc/profile.d/ruby.sh" do 
mode "0777" 
content "RUBY_HOME=/opt/chef/embedded/bin\nPATH=$PATH:$RUBY_HOME\nexport RUBY_HOME"
action :create
end


include_recipe "df_ruby::rubygems"