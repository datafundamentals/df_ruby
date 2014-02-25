# this cookbook is supposed to help download and set up ruby gems 
 # this is a sub-recipe cookbook for the system and not what they work with.
# i have no idea what I am doing.



# where we move the source file from the shared folder into the shared directory
execute "copy rubygems" do 
	command "cp -r /vagrant/binaries/rubygems-2.1.11 /home/vagrant"
	action :run 
end


# running the ruby gems install.
execute "run rubygems setup" do
	cwd "/home/vagrant/rubygems-2.1.11"
	command "ruby setup.rb" 
	action :run
end


