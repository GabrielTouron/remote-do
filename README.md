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

Workflow

Le manager assigne un employé, un client, un nom de projet et un horaire à un event.
Si on met en contact un provider (ex: idevon.do@dev.com) ca va mettre en place un trigger sur app script 15 min avant l'horaire de l'event.
Et un autre trigger 1h après l'horaire
Si on supprime un event avec un provider name ca supprime les triggers.
Bonus: Créer une API qui gère les providers name

Le trigger lance un script:
un terraform qui lance une VM sur un cloud provider qui setup l'environnement dev en fonction de l'employé et du client.

- target le provider et son compte associé
- lance la vm
- met les users privileges
- met les clés ssh
- lance ansible
- install docker
- install traeffik
- install git
- install .config
- install custom dev setup
- install client need (database, api, front, third party app)

Random cmds

```
docker-compose -f deploy/docker-compose.yml run --rm terraform init
```

```
docker-compose -f deploy/docker-compose.yaml run --rm terraform apply -var-file="secret.tfvars"
```

```
ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -u root -i '172.16.238.10', --private-key="~./.ssh/id_ed25519" -e ssh_key_pub_path='~./.ssh/id_ed25519.pub' -e username='exploit' ./deploy/ansible/playbook.yml
```

```
docker run -ti --rm -v $(pwd):/app gabriel-node pnpm dlx create-next-app@latest -e with-docker-multi-env --use-pnpm
```
