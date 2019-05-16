#!/bin/bash

ansible-playbook -i host.ini cluster_playbook.yaml --timeout 30
