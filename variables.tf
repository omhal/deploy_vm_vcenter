variable "vcenter_server" { type = string }
variable "vcenter_user" { type = string }
variable "vcenter_password" { 
   type = string 
   sensitive = true 
}
variable "allow_unverified_ssl" { 
  type = bool 
  default = true 
}

variable "datacenter" { type = string }
variable "esxi_host" { type = string }
variable "datastore" { type = string }
variable "network" { type = string }
variable "template_name" { type = string }

variable "vm_domain" { 
  type = string 
  default = "domain.local" 
}
variable "vm_netmask" { 
  type = number 
  default = 24 
}
variable "vm_gateway" { type = string }
variable "vm_dns" { type = list(string) }
variable "vm_interface" { 
  type = string 
  default = "ens160" 
}

variable "vm_username" { 
  type = string 
  default = "elastic" 
}
variable "vm_password" { 
  type = string 
  sensitive = true 
}
variable "ssh_public_key" { type = string }

variable "vms" {
  type = map(object({
    ip             = string
    cpu            = number
    memory         = number
    root_disk_size = number
    data_disk_size = optional(number)
  }))
}
