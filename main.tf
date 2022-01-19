terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.17.0"
    }
  }
}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "web" {
  image    = var.do_image
  name     = var.do_name
  region   = var.do_region
  size     = var.do_size
  ssh_keys = [var.do_ssh_fingerprint]

  provisioner "remote-exec" {
    inline = ["sudo apt update", "sudo apt install python3 -y", "echo Done!"]

    connection {
      type = "ssh"
      user = "root"
      host = "${digitalocean_droplet.web.ipv4_address}"
      private_key = file(var.ssh_key_path)
    }

  }

  provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -u root -i '${digitalocean_droplet.web.ipv4_address},' --private-key ${var.ssh_key_path} -e 'ssh_key_pub_path=${var.ssh_key_pub_path}' ansible/playbook.yml"
  }

}


output "droplet_ip_addresse" {
  description = "ip addresse of digitalocean_droplet.web"
  value       = digitalocean_droplet.web.ipv4_address
}
