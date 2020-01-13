# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "centos/7"
  config.vm.network "public_network"
  config.disksize.size = "200GB"

  config.vm.provider "virtualbox" do |vb|
  #   vb.gui = true
    vb.memory = "4096"
    vb.cpus = 4
  end

  config.vm.provision "shell", inline: <<-SHELL
    # install dependencies
    yum update -y
    yum upgrade -y
    yum groupinstall -y "Development Tools"
    yum install -y wget ncurses-devel bison flex elfutils-libelf-devel openssl-devel bc vim-enhanced epel-release

    # download kernel source (4.19.52)
    cd /root
    wget https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.52.tar.xz
    unxz -v linux-4.19.52.tar.xz
    tar xvf linux-4.19.52.tar
    cd linux-4.19.52
    make ARCH=x86 cscope tags # create ctags / cscope
  SHELL

end
