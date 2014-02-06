#
# Cookbook Name:: df_ruby
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#


# install the ruby code
package "ruby" do 
	action :install
end

# extra recipes involved that we might need
# these should be written as separate recipe and worked in as include_recipe
include_recipe "df_ruby::rubygems"
