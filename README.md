# Digital Ocean Remote Development

## Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Usage](#usage)
- [Contributing](../CONTRIBUTING.md)

## About <a name = "about"></a>

Generate a droplet in DO cloud for remote development, build with terraform and ansible.

## Getting Started <a name = "getting_started"></a>

```bash
terraform init
```

Create a secret.tfvars with the given variables

```bash
terraform apply -var-file="secret.tfvars"
```

Don't forget to destroy the droplet after the remote dev session

```bash
terraform destroy -var-file="secret.tfvars"
```

### Prerequisites

What things you need to install the software and how to install them.

Install terraform in your local machine

### Installing

A step by step series of examples that tell you how to get a development env running.

Say what the step will be

```
Give the example
```

And repeat

```
until finished
```

End with an example of getting some data out of the system or using it for a little demo.

## Usage <a name = "usage"></a>

Add notes about how to use the system.
