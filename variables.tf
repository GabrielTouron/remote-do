variable "do_token" {
  description = "Digital ocean token"
  type        = string
  sensitive   = true
}


variable "do_region" {
  description = "Digital ocean region"
  type        = string
  default     = "fra1"
}

variable "do_size" {
  description = "Digital ocean size"
  type        = string
  default     = "s-1vcpu-1gb"
}

variable "do_image" {
  description = "Digital ocean image"
  type        = string
  default     = "ubuntu-20-04-x64"
}

variable "do_ssh_key" {
  description = "Digital ocean ssh key"
  type        = string
  default     = "id_rsa"
}

variable "do_ssh_key_name" {
  description = "Digital ocean ssh key name"
  type        = string
  default     = "id_rsa"
}

variable "do_ssh_key_path" {
  description = "Digital ocean ssh key path"
  type        = string
  default     = "/home/vagrant/.ssh/id_rsa"
}

variable "do_ssh_key_pub_path" {
  description = "Digital ocean ssh key public path"
  type        = string
  default     = "/home/vagrant/.ssh/id_rsa.pub"
}

variable "do_name" {
  description = "Digital ocean droplet name"
  type        = string
  default     = "remote-dev-server"
}
