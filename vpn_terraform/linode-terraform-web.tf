terraform {
  required_providers {
    linode = {
      source = "linode/linode"
      version = "1.16.0"
    }
  }
}

provider "linode" {
  token = ""
}

resource "linode_instance" "terraform-web" {
  image = "linode/ubuntu20.04"
  label = "VPN"
  group = "Terraform"
  region = "us-south"
  type = "g6-nanode-1"
  authorized_keys = [""]
}
