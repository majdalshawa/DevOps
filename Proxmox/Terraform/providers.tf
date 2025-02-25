terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "0.70.0" #we use this version of the provider
    }
  }
}

provider "proxmox" {
  endpoint   = var.api_url
  api_token  = var.tokenauth.api_token 
  insecure   = true 

  ssh {
    agent    = true
    username = var.user 
  }
}
