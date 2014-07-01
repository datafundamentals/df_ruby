# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.hostname = "df-ruby-berkshelf"

  config.vm.box = "Berkshelf-CentOS-6.3-x86_64-minimal"

  config.vm.box_url = "https://dl.dropbox.com/u/31081437/Berkshelf-CentOS-6.3-x86_64-minimal.box"

  config.vm.network :private_network, ip: "33.33.33.10"

  # config.vm.network :public_network

  # accessing "localhost:8080" will access port 80 on the guest machine.

  # config.vm.synced_folder "../data", "/vagrant_data"

  # config.vm.provider :virtualbox do |vb|
  #   # Don't boot with headless mode
  #   vb.gui = true
  #
  #   # Use VBoxManage to customize the VM. For example to change memory:
  #   vb.customize ["modifyvm", :id, "--memory", "1024"]
  # end

  config.ssh.max_tries = 40
  config.ssh.timeout   = 120

  # config.berkshelf.berksfile_path = "./Berksfile"

  config.berkshelf.enabled = true

  # config.berkshelf.only = []

  # config.berkshelf.except = []

  config.vm.provision :chef_solo do |chef|
    chef.json = {
      :mysql => {
        :server_root_password => 'rootpass',
        :server_debian_password => 'debpass',
        :server_repl_password => 'replpass'
      }
    }

    chef.run_list = [
        "recipe[df_ruby::default]"
    ]
  end
end
