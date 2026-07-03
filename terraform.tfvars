vcenter_server   = "172.16.16.151"
vcenter_user     = "administrator@itsec.local"
vcenter_password = "Noble2025!"

datacenter    = "ITSEC Lab"
esxi_host     = "172.16.16.250"
datastore     = "VMFSdata"
network       = "VM Network"
template_name = "ubuntu-template"

vm_domain  = "itsec.local"
vm_gateway = "172.16.16.1"
vm_dns     = ["8.8.8.8", "1.1.1.1"]

vm_username = "elastic"
vm_password = "Jakarta2026!"
ssh_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD0V5Su/AcKv2PSNEqeKZIwq4WfgTo40UKTeRgWjuK0GqQbLg7Xak7/Rtk5sN1qf5swbcMYk0ItjdPfLdxt/dtLDkWZvcWw5oek+d+LXx45t2ArVW39UA8sNgEwQhNfjGSHRznv7QgbufRZC+AneiTuzhT+3gK/nE/+atiN/FvuLowlG+ZaidNCLM+P8IPkp/oIyNkjAxaghZkTqszASP4v4237w3ltvVVwuNOnpdtMG48O3/hp9T9fbfe3v++l8oEnSSLa/p1dYEk4R2ktLpNCQXG/8FJfVvCH/NmxYmgqXQpAuyAfD20QGLKdMlVEHzNbhlGt/lyf0eJOOfUI5Hz3pwoRnLrqBJ5pawKlfXQQcn69Y+Q0JZSh42WkY6mPKSwnT5TWq4p0JFjHEmKV0+lcqiR/Trkm0aYbikBLRp6OFjqFwAcvB8iNo1jxlmm2MuHrO9koqmf3pzLHPNPkpMjGgxFbHc9VCkqEcD3Q6rPTyPJGNIBHA/m0t1ZDFcDgGNM="

vms = {
  omhal-lab-node1 = { ip = "172.16.16.40", cpu = 4, memory = 8192, root_disk_size = 50 }
  omhal-lab-node2 = { ip = "172.16.16.41", cpu = 4, memory = 8192, root_disk_size = 50 }
  omhal-lab-node3 = { ip = "172.16.16.42", cpu = 4, memory = 8192, root_disk_size = 50 }
  omhal-lab-cold = { ip = "172.16.16.44", cpu = 4, memory = 8192, root_disk_size = 50 }
  omhal-lab-ml = { ip = "172.16.16.47", cpu = 4, memory = 8192, root_disk_size = 50 }
  omhal-lab-fleet = { ip = "172.16.16.48", cpu = 4, memory = 4096, root_disk_size = 30 }
  omhal-lab-kibana = { ip = "172.16.16.49", cpu = 4, memory = 8192, root_disk_size = 30 }
  omhal-lab-tiket = { ip = "172.16.16.60", cpu = 4, memory = 8192, root_disk_size = 50 }
}
