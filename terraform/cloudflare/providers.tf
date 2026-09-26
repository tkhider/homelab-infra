terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = ">= 5"
    }
  }

  cloud {
    organization = "Tarek-Corp"

    workspaces {
      name = "cloudflare-terraform"
    }
  }
}