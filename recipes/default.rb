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
	action [:install, :upgrade]
end


