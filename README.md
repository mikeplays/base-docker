
Base Docker
===

About
---
Soon to be named something else?


A local dev environment for working on one *or more* Empathy apps. (See https://github.com/mikejw/empathy.)

You must have Docker and Ansible installed.

Also create a `/etc/hosts` file entry for `www.dev.org`:


    127.0.0.1	localhost www.dev.org

More info coming soon...

Licence
---
Now distributed under an
MIT license.  See [LICENSE](./LICENSE).


Getting starting
---

First steps. Initialise virtualenv. On a Mac:

    brew install virtualenv
    virtualenv ./python

Usage
---

##### Initialise config on new machine:


    ansible-playbook init.yml

(Creates settings file in ~/.config)

##### Switch project:


    ansible-playbook main.yml -e "op=switch cb=a.ce"

In the above example the project found in `~/code/a.ce` will be set as active.
    

##### Boot current project:


    ansible-playbook main.yml -e "op=boot"


##### Quick start commands

Boostrap Empathy projects giving target extension name. Template default is "vanilla" for
base empathy app with no extensions.  

Others available are "elib-base", "elib-acl".

Will fail if codebase path already exists.


    ansible-playbook main.yml -e "op=qs cb=myproject tpl=elib-base"


##### Frontend


If you have frontend code in the (monolithic) project code-base sub-directory `/react`, (ideally React code), it will also attempt to run this in the background with:

    `npm run dev`

This will also log to the file `/react.log` in the 'base-docker' project.  Kill process with:

    killall node


Caveats
---
The default `app` container has apcu cache enabled for reading `config.yml` files and dependency injection `services.php` definition files.

Restart the app container after making changes to these files.

    docker stop app
    docker start app



Misc.
---
Run command in the background from Ansible:
https://stackoverflow.com/questions/39347379/ansible-run-command-on-remote-host-in-background
