# this cookbook is supposed to help download and set up ruby gems 
# Rubygems is already installed with the omnibus installer of chef
# therefore we are just going to once again point it to the path of the Rubygems

file "/etc/profile.d/ruby_gems.sh" do 
 owner "root" 
 mode "0777" 
 content"export PATH GEM_HOME=/opt/chef/embedded/bin\n

PATH=$PATH:$GEM_HOME\n

export GEM_HOME\n"
action :create
end
