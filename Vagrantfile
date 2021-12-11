vbname = ENV["VAGRANT_NAME"] || "terraformDevBox"
vbcpus = ENV["VAGRANT_CPUS"] || 1
vbmemory = ENV["VAGRANT_MEMORY"] || 2048
vbsshpubkey = ENV["VAGRANT_SSH_PUB_KEY"] || "~/.ssh/id_rsa.pub"

Vagrant.configure("2") do |config|
  config.vm.box = "fedora/33-cloud-base"
  config.vm.box_version = "33.20201019.0"

  config.vm.provider "virtualbox" do |vbconfig|
    vbconfig.gui = false
    vbconfig.name = vbname
    vbconfig.memory = vbmemory
    vbconfig.cpus = vbcpus
  end

  config.vm.provision :ansible do |ansible|
    ansible.extra_vars = {
      vagrant_ssh_pub_key: vbsshpubkey
    }
    ansible.playbook = "ansible/playbook.yml"
  end
end