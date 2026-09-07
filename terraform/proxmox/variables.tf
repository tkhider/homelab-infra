variable "proxmox_node" {
  type        = string
  description = "Proxmox node to deploy VMs on"
  default     = "elior"
}

variable "network_bridge" {
  type        = string
  description = "Proxmox network bridge for VM network devices"
  default     = "vmbr0"
}

variable "datastore_id" {
  type        = string
  description = "Proxmox datastore for VM disks"
  default     = "local-zfs"
}
