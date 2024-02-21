
Base-Docker on Raspberry Pi
===

Currently only support for a Raspberry Pi running a 64bit OS is provided. Recommended hardware is a
Raspberry Pi 4 with 4GB RAM and above.

Getting started
---

Raspberry Pi OS Instructions:

##### Install Ansible and Pythton virtualenv:

<pre><code class="language-bash">sudo apt-get install ansible virtualenv
</code></pre>

##### Install Docker:

<pre><code class="language-bash">curl -sSL https://get.docker.com | sh
sudo usermod -aG docker $USER
</code></pre>

Next log out and log back in again to apply the group changes.

Once back in you should not see any errors when running:

<pre><code class=="language-bash">docker ps</code></pre>


##### Clone the base-docker repository to your local machine:

<pre><code class="language-bash">cd 
mkdir code
cd code
git clone https://github.com/mikejw/base-docker.git
cd base-docker
</code></pre>

##### Create hosts file entry

Create a `/etc/hosts` file entry for `www.dev.org`:

<pre><code class="lang-vim">127.0.0.1	localhost www.dev.org
</code></pre>

##### Initialise virtualenv within root directory of `base-docker` on your machine:

<pre><code class="language-bash">virtualenv ./python</code></pre>

##### Initialise base-docker config on the machine:

<pre><code class="language-bash">cd ansible
ansible-playbook ../init.yml -e "arch=pi"
</code></pre>

##### Finally test the setup by bootstrappning a new Quickstart project:

<pre><code class="language-bash">cd ansible
ansible-playbook ../main.yml -e "op=qs cb=myproject tpl=elib-base"
</code></pre>



