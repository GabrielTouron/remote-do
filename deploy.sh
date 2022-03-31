#!/bin/sh
docker-compose -f deploy/docker-compose.yaml run --rm terraform apply -var-file="secret.tfvars"

