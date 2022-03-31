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

variable "do_ssh_fingerprint" {
  description = "Digital ocean ssh key"
  type        = string
  sensitive   = true
}

variable "ssh_key_path" {
  description = "ssh key path"
  type        = string
  default     = "/root/.ssh/id_ed25519"
}

variable "ssh_key_pub_path" {
  description = "ssh key public path"
  type        = string
  default     = "/root/.ssh/id_ed25519.pub"
}

variable "do_name" {
  description = "Digital ocean droplet name"
  type        = string
  default     = "remote-dev-server-test"
}

variable "username" {
  description = "Username"
  type        = string
  default     = "exploit"
}
