# -*- mode: ruby -*-
# vi: set ft=ruby :

ui = Vagrant::UI::Colored.new

Vagrant.configure('2') do |config|
  config.vm.hostname = 'wordpress'

  config.vm.define :ubuntu_trusty do |trusty|
    trusty.vm.box = 'trusty64'
    trusty.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
  end

  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--cpus', 1]
    vb.customize ['modifyvm', :id, '--memory', 1024]
  end

  config.vm.provision 'shell',
    inline: 'which chef-solo >/dev/null 2>&1 || ((wget https://www.opscode.com/chef/install.sh || curl -LO https://www.opscode.com/chef/install.sh) && sudo bash ./install.sh && rm install.sh)'

  config.vm.network 'private_network', ip: '192.168.50.4'

  config.berkshelf.berksfile_path = './Berksfile'
  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.log_level = :debug

    chef.run_list = %w(
      recipe[apt::default]
      recipe[bad-blog]
    )
  end
end
