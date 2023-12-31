

Vagrant.configure("2") do |config|
    config.vm.define "node" do |node|
        node.vm.network "private_network", ip: "192.168.56.211", auto_config: true
        node.vm.box = "ubuntu/lunar64"

        node.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "~/.ssh/me.pub"
        node.vm.provision "shell", inline: "cat ~vagrant/.ssh/me.pub >> ~vagrant/.ssh/authorized_keys"
        node.vm.provision "file", source: "~/.ssh/id_rsa", destination: "~/.ssh/id_rsa"
        node.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "~/.ssh/id_rsa.pub"
        node.vm.provision "file", source: "~/.ssh/known_hosts", destination: "~/.ssh/known_hosts"
        node.vm.provision "shell", inline: "chmod 600 /home/vagrant/.ssh/id_rsa"
        node.vm.provision "shell", inline: "sudo cp -r /home/vagrant/.ssh /root/.ssh"
        node.vm.provision "shell", inline: "echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config"

        node.vm.synced_folder "./code", "/home/vagrant/code", create: true, group: "vagrant", owner: "vagrant"

        node.vm.provider "virtualbox" do |v|
            v.name = "node"
            v.memory = 4096
            v.cpus = 2
        end
    end

    config.vm.define "control" do |control|
        control.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "~/.ssh/me.pub"
        control.vm.provision "shell", inline: "cat ~vagrant/.ssh/me.pub >> ~vagrant/.ssh/authorized_keys"
        control.vm.provision "file", source: "~/.ssh/id_rsa", destination: "~/.ssh/id_rsa"
        control.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "~/.ssh/id_rsa.pub"
        control.vm.provision "shell", inline: "chmod 600 /home/vagrant/.ssh/id_rsa"
        control.vm.provision "file", source: "~/.ssh/known_hosts", destination: "~/.ssh/known_hosts"

        control.vm.box = "ubuntu/lunar64"
        control.vm.network "private_network", ip: "192.168.56.212", auto_config: true

        control.vm.synced_folder ".", "/home/vagrant/files", create: true, group: "vagrant", owner: "vagrant", type: "virtualbox", mount_options: ["dmode=755","fmode=755"]

        control.vm.provision "ansible_local" do |ansible|
            ansible.provisioning_path = "/home/vagrant/files/vagrant"
            ansible.playbook = "../vagrant_roles.yml"
            ansible.inventory_path = "./hosts"
            ansible.verbose = true
            ansible.limit = "all"
        end

        control.vm.provision "ansible_local" do |ansible|
            ansible.provisioning_path = "/home/vagrant/files/vagrant"
            ansible.playbook = "../vagrant.yml"
            ansible.inventory_path = "./hosts"
            ansible.verbose = true
            ansible.limit = "all"
        end

        control.vm.provider "virtualbox" do |v|
            v.name = "control"
            v.memory = 2048
            v.cpus = 2
        end
    end
end