
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
MIT license.  See [LICENSE.txt](./LICENSE.txt).


Getting starting
---

Create a `/etc/hosts` file entry for `www.dev.org`:


    127.0.0.1	localhost www.dev.org


Initialise virtualenv within root directory of `base-docker` on your machine. (E.g. for macOS):

    brew install virtualenv
    virtualenv ./python


Usage
---

##### Initialise config on new machine:

    cd ansible
    ansible-playbook ../init.yml

(Creates settings file in ~/.config)

##### Switch project:

    cd ansible
    ansible-playbook ../main.yml -e "op=switch cb=a.ce"

In the above example the project found in `~/code/a.ce` will be set as active.
    

##### Boot current project:

    cd ansible
    ansible-playbook ../main.yml -e "op=boot"


##### Quick-start commands

Boostrap Empathy projects giving target extension name. Template default is "vanilla" for
base empathy app with no extensions.  

Others available are "elib-base", "elib-acl".

Will fail if codebase path already exists.

    cd ansible
    ansible-playbook ../main.yml -e "op=qs cb=myproject tpl=elib-base"


Caveats
---
The default `app` container has apcu cache enabled for reading `config.yml` files and dependency injection 
`services.php` definition files.

Restart the app container after making changes to these files.

    docker stop app
    docker start app

Ansible my have trouble connecting to Docker Desktop on macOS when running docker tasks.  If 
this happens run this command:

    sudo ln -s "$HOME/.docker/run/docker.sock" /var/run/docker.sock

