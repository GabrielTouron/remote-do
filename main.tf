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
  image  = var.do_image
  name   = var.do_name
  region = var.do_region
  size   = var.do_size
}
