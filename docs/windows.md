

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

<pre><code class="language-bash">vagrant plugin install vb-guest
</code></pre>

Then, clone the base-docker repository to your local machine:

Next find Notepad on your system and right-click on it and choose "Run as administrator".

Open the `hosts` file at the following path:

<pre><code class="language-bash">C:\Windows\System32\drivers\etc\hosts
</code></pre>

Ensure that these entries are added to the hosts file:

<pre><code class="language-bash">192.168.56.211	node www.dev.org
    192.168.56.212	control
</code></pre>

Finally, use git bash again and ensure you have changed to the base-docker directory
on your machine, using the `cd` command. E.g (on my machine):

<pre><code class="language-bash">cd ~/code/mikejw/base-docker
</code></pre>

Then, run:

<pre><code class="language-bash">vagrant up
</code></pre>

Usage (with Caveats)
---

Once the machines have finished being provisioned, you can now follow the instructions for usage in the main
[README.md file](../README.md), however there are few caveats (to usage!).

Before running any playbook, ssh into the `control` host
and change into the `vagrant` directory:

<pre><code class="language-bash">vagrant ssh control
cd ./files/vagrant
</code></pre>

Then, run the following command:


Secondly  whenever running the `main.yml` playbook (for any reason) you must pass the target host `node` as a variable, 
like so:

<pre><code class="language-bash">ansible-playbook ../main.yml -e "op=switch cb=a.ce"

    # becomes:

    ansible-playbook ../main.yml -e "op=switch cb=a.ce variable_host=node"
</code></pre>

    



