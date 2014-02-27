# this cookbook is supposed to help download and set up ruby gems 
# Rubygems is already installed with the omnibus installer of chef
# therefore we are just going to once again point it to the path of the Rubygems

file "/etc/profile" do 
	new_lines = "export PATH GEM_HOME=/opt/chef/embedded/bin\n

PATH=$PATH:$GEM_HOME\n

export GEM_HOME\n"

only_if do 
	current_content = File.read("/etc/profile")
	current_content.index("GEM_HOME").nil?
end

	current_content = File.read("/etc/profile")
	new_content = current_content + new_lines
	content "#{new_content}"
end

