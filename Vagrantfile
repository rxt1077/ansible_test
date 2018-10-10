Vagrant.configure("2") do |config|
    config.vm.define "master" do |master|
        master.vm.box = "ubuntu/bionic64"
        master.vm.network "private_network", ip: "192.168.33.10"
        master.vm.provision "shell", path: "setup_master.sh"
    end

    config.vm.define "slave1" do |slave1|
        slave1.vm.box = "centos/7"
        slave1.vm.network "private_network", ip: "192.168.33.20"
        slave1.vm.provision "shell", path: "setup_slave.sh", args: "slave1"
    end

    config.vm.define "slave2" do |slave2|
        slave2.vm.box = "centos/7"
        slave2.vm.network "private_network", ip: "192.168.33.30"
        slave2.vm.provision "shell", path: "setup_slave.sh", args: "slave2"
    end
end
