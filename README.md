# Digital Ocean Remote Development

## Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Usage](#usage)
- [Contributing](../CONTRIBUTING.md)

## About <a name = "about"></a>

Generate a droplet in DO cloud for remote development, build with terraform and ansible.

## Getting Started <a name = "getting_started"></a>

You need Ansible and Terraform on your local machine

### Prerequisites

You need to populate the secrets variables :

ssh_fingerprint: the DigitalOcean API refers to SSH keys using their fingerprint, which is a shorthand identifier based on the key itself.

To get the fingerprint for your key, run the following command, being sure to update the path (currently ~/.ssh/id_rsa.pub) to the key you're using with DigitalOcean, if necessary:

```bash
ssh-keygen -E md5 -lf ~/.ssh/id_rsa.pub | awk '{print $2}'
```

or

```bash
ssh-keygen -E md5 -lf ~/.ssh/id_ed25519.pub | awk '{print $2}'
```

The output will be similar to this: `MD5:ac:eb:de:c1:95:18:6f:d5:58:55:05:9c:51:d0:e8:e3`

Copy everything except the initial MD5: and paste it into the variable.

### Installing

```bash
terraform init
```

Create a secret.tfvars with the given variables

```bash
terraform apply -var-file="secret.tfvars"
```

End with an example of getting some data out of the system or using it for a little demo.

## Usage <a name = "usage"></a>

Don't forget to destroy the droplet after the remote dev session

```bash
terraform destroy -var-file="secret.tfvars"
```
