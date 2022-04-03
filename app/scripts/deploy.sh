#!/bin/sh
chown root:root /root/.ssh -R

cd /app/deploy

terraform init

terraform apply -var-file="secret.tfvars" -auto-approve