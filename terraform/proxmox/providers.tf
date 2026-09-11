variable "api_token" {
  type = string
  description = "Proxmox API Token"
  sensitive = true
}

terraform {
  required_version = "1.16"

  cloud {

    organization = "Tarek-Corp"

    workspaces {
      name = "proxmox"
    }
  }
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "0.113.1"
    }
  }
}

provider "proxmox" {
  endpoint  = "https://elior.local.khider.fr"
  api_token = var.api_token
  insecure  = false
}
