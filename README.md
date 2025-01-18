
Base Docker
===

About
---
Soon to be named something else?


A local dev environment for working on one *or more* Empathy apps. (See https://github.com/mikejw/empathy.)

For macOS/Linux workstations you must have Docker and Ansible installed on your local machine, however if you are
on Windows, read the [Windows instructions](./docs/windows.md) before reading the rest of this README, beginning
at the "Usage" section.


Licence
---
Now distributed under an
MIT license.  See [LICENSE](./LICENSE).


Getting starting
---

##### Decide your local hostname:

Decide which local hostname you will be using for development.

The recommended custom hostname is `www.dev.org`.

You might decide to use an IP address instead (useful for testing from another device on your network), 
`localhost`, or something else entirely.

If you decide to use something other than `www.dev.org`, even if it is an IP address or is another custom hostname,
make a note of it now.


##### Hosts file entry for `www.dev.org` or custom hostname:

Whether you are going with the default hostname `www.dev.org` or something custom, create a `/etc/hosts` file entry for
it now if it is *not* a system default hostname. (IP address or `localhost`.) `www.dev.org` is being used
in the following example:

<pre><code class="language-vim">127.0.0.1	localhost www.dev.org
</code></pre>

##### Virtualenv in `./python`:

Initialise virtualenv within the root directory of `base-docker` on your machine. (E.g. for macOS):


<pre><code class="language-bash">brew install virtualenv
virtualenv ./python
</code></pre>


##### Install `pip` package `packaging`:

This package is a pre-requisite before pip packages can be installed through Ansible.

Install it manually now:

<pre><code class="language-bash">cd ./python/bin
./pip3 install packaging
</code></pre>


##### Install Anisble galaxy roles/collections:

From the root `base-docker` directory, run the script as follows:

<pre><code class="language-bash">./ansible-install.sh
</code></pre>


Usage
---

##### Initialise config on new machine:

<pre><code class="language-bash">cd ansible
ansible-playbook ../init.yml
</code></pre>

This creates settings file for `base-docker` in `~/.config`.

If you are using any hostname other than the default (`www.dev.org`), specify it with the `h` argument. E.g:

<pre><code class="language-bash">cd ansible
ansible-playbook ../init.yml -e "h=10.0.0.22"
</code></pre>


##### Switch project:

<pre><code class="language-bash">cd ansible
ansible-playbook ../main.yml -e "op=switch cb=a.ce"
</code></pre>

In the above example the project found in `~/code/a.ce` will be set as active.


##### Boot current project:

<pre><code class="language-bash">cd ansible
ansible-playbook ../main.yml -e "op=boot"
</code></pre>


##### Quick-start commands:

Boostrap Empathy projects giving target extension template name. Template default is "vanilla" for
base empathy app with no extensions, (when no argument is provided).  

Others available are "elib-base", "elib-acl" and "elib-blog".

The playbook will fail if codebase path already exists.

<pre><code class="language-bash">cd ansible
ansible-playbook ../main.yml -e "op=qs cb=myproject tpl=elib-base"
</code></pre>


Caveats
---
The default `app` container has apcu cache enabled for reading `config.yml` files and dependency injection 
`services.php` definition files.

Restart the app container after making changes to these files.

<pre><code class="language-bash">docker stop app
docker start app
</code></pre>

Ansible my have trouble connecting to Docker Desktop on macOS when running docker tasks.  If 
this happens run this command:

<pre><code class="language-bash">sudo ln -s "$HOME/.docker/run/docker.sock" /var/run/docker.sock
</code></pre>

