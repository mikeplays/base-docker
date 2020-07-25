
Base Docker
===

Soon to be named something else?

Initialise config on new machine:

    ansible-playbook init.yml

(Creates settings file in ~/.config)

Switch project:

    ansible-playbook main.yml -e "op=switch cb=a.ce"

Boot current project:

    ansible-playbook main.yml -e "op=boot"


Host machine requires to be installed:
* pip
* (python) virtualenv

Be wary of `ansible_python_interpreter` setting on "control" host vars.

Run command in the background from ansible:
https://stackoverflow.com/questions/39347379/ansible-run-command-on-remote-host-in-background