#!/bin/bash

## This script is intended to be run on the control host (ie: workstation)

## Install the ansible hosts inventory
echo "Installing config file: /etc/ansible/hosts"
cp -f ./configs/ansible-hosts /etc/ansible/hosts

## Now we can do things via ansible where possible

## ansible-playbook -f 3 ./playbooks/workstation-pre-install.yml
echo "Calling ansible playbook: ./playbooks/cluster-pre-install.yml"
ansible-playbook -f 4 ./playbooks/cluster-pre-install.yml
