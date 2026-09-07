resource "proxmox_virtual_environment_vm" "kube-prod-1" {
  node_name = "elior"
  vm_id = 101

  agent {
    enabled = false
  }
}
