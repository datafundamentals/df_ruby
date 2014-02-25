## df_ruby cookbook
this cookbook should properly install and configure ruby for your computer to run on your system. This is important if you are looking to install a particular version of ruby on your system. 

It is worth noting that if you are looking for an easy installation of ruby on your system, you should be able to write a very simple package installation which will install 1.8.7. It is worth noting that this is a much older and deprecated version.

The secondary purpose of this cookbook is have the option of installing several gem install setups including rbenv, rubygems,
# Requirements
the default recipe needs nothing other than a local .tar.gz file for the installation of ruby

accompanying recipes will need a base ruby installed for then to work properly.
# Usage

# Attributes
* default['df_ruby']['source']= attribute for specifying the location where it can download the tar file. This allows it to be either local or from a URL.

# Recipes

* default: this is the main set for installing and setting up ruby. 
* rubygems: helps install and configure rubygems onto the system.
* rbenv: installs rbenv setup


# Author

Author:: Jeff Carapetyan (<YOUR_EMAIL>)
