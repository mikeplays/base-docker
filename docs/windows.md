

Base-Docker in Windows
===

Getting started
---

Running base-docker in Windows requires recommended installed software: [VirtualBox](https://www.virtualbox.org/),  
[Vagrant](https://www.vagrantup.com/) and [Git](https://git-scm.com/download/win) (Git bash).

Once this software is installed, it allows for the running of base-docker `ansible-playbook` commands where a "control"
host runs the playbooks (and maintains a config file in ~/.config) and deploys to another host called "node" where
Docker is installed.

This allows for the re-use of Ansible playbooks, which are normally run against the local host in non-Windows 
environments.

After the above software is installed, launch a Git bash shell prompt and install
the Vagrant `vb-guest` plugin:

    vagrant plugin install vb-guest

Next find Notepad on your system and right-click on it and choose "Run as administrator".

Open the `hosts` file at the following path:

    C:\Windows\System32\drivers\etc\hosts

Ensure that these entries are added to the hosts file:

    192.168.56.211	node www.dev.org
    192.168.56.212	control

Finally use git bash again and ensure you have changed to the base-docker directory
on your machine, using the `cd` command. E.g (on my machine):

    cd ~/code/mikejw/base-docker

Then, run:

    vagrant up


Usage (with Caveats)
---

Once the machines have finished being provisioned, you can now follow the instructions for usage in the main
[README.md file](../README.md), however there are few caveats (to usage!).

Before running any playbook, ssh into the `control` host
and change into the `vagrant` directory:

    vagrant ssh control
    cd ./files/vagrant


Secondly  whenever running the `main.yml` playbook (for any reason) you must pass the target host `node` as a variable, 
like so:


    ansible-playbook ../main.yml -e "op=switch cb=a.ce"

    # becomes:

    ansible-playbook ../main.yml -e "op=switch cb=a.ce variable_host=node"

    



