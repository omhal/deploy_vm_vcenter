terraform {
  required_version = ">= 1.5.0"

  required_providers {
    vsphere = {
      source  = "vmware/vsphere"
      version = "~> 2.10"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}
