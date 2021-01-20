#!/bin/bash

PYHTONPATH=~/.pyenv/versions/3.7.3/lib/python3.7/site-packages/

ansible-playbook main.yml -e "cb=victor2 op=boot"
