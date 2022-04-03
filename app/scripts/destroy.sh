cd /app/deploy

terraform destroy -var-file="secret.tfvars" -auto-approve