
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

Create a `/etc/hosts` file entry for `www.dev.org`:

<pre><code class="language-vim">127.0.0.1	localhost www.dev.org
</code></pre>


Initialise virtualenv within root directory of `base-docker` on your machine. (E.g. for macOS):

<pre><code class="language-bash">brew install virtualenv
virtualenv ./python
</code></pre>


Usage
---

##### Initialise config on new machine:

<pre><code class="language-bash">cd ansible
ansible-playbook ../init.yml
</code></pre>

(Creates settings file in ~/.config)

##### Switch project:

<pre><code class="language-bash">cd ansible
ansible-playbook ../main.yml -e "op=switch cb=a.ce"
</code></pre>

In the above example the project found in `~/code/a.ce` will be set as active.


##### Boot current project:

<pre><code class="language-bash">cd ansible
ansible-playbook ../main.yml -e "op=boot"
</code></pre>


##### Quick-start commands

Boostrap Empathy projects giving target extension name. Template default is "vanilla" for
base empathy app with no extensions.  

Others available are "elib-base", "elib-acl".

Will fail if codebase path already exists.

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

