#
# Cookbook Name:: df_ruby
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#


# this will set up the path for the ruby used in the omnibus installer.
file "/etc/profile" do 
	new_lines = "RUBY_HOME=/opt/chef/embedded/bin\nPATH=$PATH:$RUBY_HOME\nexport RUBY_HOME"

only_if do 
	current_content = File.read("/etc/profile")
	current_content.index("RUBY_HOME").nil?
end

	current_content = File.read("/etc/profile")
	new_content = current_content + new_lines
	content "#{new_content}"
end