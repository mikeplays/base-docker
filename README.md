
Base Docker
===

About
---
Soon to be named something else?


Getting starting
---

First steps. Initialise virtualenv. On a Mac:

    brew install virtualenv
    virtualenv ./python

Usage
---

Initialise config on new machine:

    ansible-playbook init.yml

(Creates settings file in ~/.config)

Switch project:

    ansible-playbook main.yml -e "op=switch cb=a.ce"

Boot current project:

    ansible-playbook main.yml -e "op=boot"


Misc.
---
Run command in the background from Ansible:
https://stackoverflow.com/questions/39347379/ansible-run-command-on-remote-host-in-background
