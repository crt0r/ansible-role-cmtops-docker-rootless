# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"

  config.vm.provision "docker", type: "ansible" do |ansible|
    ansible.config_file = "ansible.cfg"
    ansible.playbook = "install-docker.yml"
  end
end
