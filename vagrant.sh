#!/bin/bash

cd ./vagrant

operation=$1
playbook=main.yml

myVars=(
  "variable_host=node"
)

if [[ "$operation" == "init" ]]; then
  playbook=init.yml

else
  myVars=(
    "${myVars[@]}"
    "op=qs"
    "cb=myproject"
    "tpl=vanilla"
  )
fi

vars="${myVars[@]}"
ansible-playbook ../${playbook} -e "${vars}"

cd ..
