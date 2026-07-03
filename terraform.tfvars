vcenter_server   = "ip_vcenter"
vcenter_user     = "user_vcenter"
vcenter_password = "pass_vcenter"

datacenter    = "nama_datacenter"
esxi_host     = "ip_esxi"
datastore     = "datastore"
network       = "network"
template_name = "ubuntu-template"

vm_domain  = "domain_server"
vm_gateway = "gateway"
vm_dns     = ["8.8.8.8", "1.1.1.1"]

vm_username = "elastic"
vm_password = "Jakarta2026!"
ssh_public_key = "masukkan public ke ssh .pub"

vms = {
  lab-node1 = { ip = "masukkan_ip_sesuai_env", cpu = 4, memory = 8192, root_disk_size = 50 }
  lab-node2 = { ip = "masukkan_ip_sesuai_env", cpu = 4, memory = 8192, root_disk_size = 50 }
}
