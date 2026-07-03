#locals {
#  inventory_content = templatefile("${path.module}/templates/inventory.ini.tpl", {
#    vms         = var.vms
#    username    = var.vm_username
#    private_key = "~/.ssh/id_rsa"
#  })
#}

resource "vsphere_virtual_machine" "elastic" {
  for_each = var.vms

  name             = each.key
  resource_pool_id = data.vsphere_host.host.resource_pool_id
  datastore_id     = data.vsphere_datastore.datastore.id

  num_cpus = each.value.cpu
  memory   = each.value.memory
  guest_id = data.vsphere_virtual_machine.template.guest_id

  firmware  = data.vsphere_virtual_machine.template.firmware
  scsi_type = data.vsphere_virtual_machine.template.scsi_type

  wait_for_guest_net_timeout = 0
  wait_for_guest_ip_timeout  = 0

  network_interface {
    network_id   = data.vsphere_network.network.id
    adapter_type = data.vsphere_virtual_machine.template.network_interface_types[0]
  }

  disk {
    label            = "root-disk"
    size             = each.value.root_disk_size
    thin_provisioned = true
  }

  dynamic "disk" {
    for_each = try(each.value.data_disk_size, null) != null ? [each.value.data_disk_size] : []

    content {
      label            = "elastic-data"
      unit_number      = 1
      size             = disk.value
      thin_provisioned = true
    }  
  }
  clone {
    template_uuid = data.vsphere_virtual_machine.template.id
  }

  extra_config = {
    "guestinfo.userdata" = base64encode(templatefile("${path.module}/templates/cloud-init.yaml.tpl", {
      hostname       = each.key
      username       = var.vm_username
      password       = var.vm_password
      ssh_public_key = var.ssh_public_key
      ip_address     = each.value.ip
      netmask        = var.vm_netmask
      gateway        = var.vm_gateway
      dns_servers    = join(", ", var.vm_dns)
      interface_name = var.vm_interface
    }))

    "guestinfo.userdata.encoding" = "base64"
  }
}
