#!/bin/sh
chown root:root /root/.ssh -R

terraform init

terraform apply -var-file="secret.tfvars" -auto-approve