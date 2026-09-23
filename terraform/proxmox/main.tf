resource "proxmox_virtual_environment_vm" "kube-prod-1" {
  node_name = var.proxmox_node
  vm_id     = 101
  name      = "kube-prod-1"
  tags      = ["control-plane", "kubernetes", "talos"]

  started             = true
  on_boot             = true
  reboot_after_update = false
  machine             = "q35"
  bios                = "seabios"
  scsi_hardware       = "virtio-scsi-pci"
  boot_order          = ["scsi0", "net0"]

  cpu {
    cores   = 2
    sockets = 1
    type    = "host"
  }

  memory {
    dedicated = 6096
  }

  disk {
    datastore_id      = var.datastore_id
    interface         = "scsi0"
    path_in_datastore = "vm-101-disk-0"
    size              = 32
    file_format       = "raw"
    aio               = "io_uring"
    discard           = "on"
    ssd               = true
  }

  network_device {
    bridge   = var.network_bridge
    model    = "virtio"
    firewall = true
  }

  operating_system {
    type = "l26"
  }

  agent {
    enabled = false
  }
}

resource "proxmox_virtual_environment_vm" "kube-prod-2" {
  node_name = var.proxmox_node
  vm_id     = 102
  name      = "kube-prod-2"
  tags      = ["kubernetes", "talos", "worker"]

  started             = true
  on_boot             = true
  reboot_after_update = false
  machine             = "q35"
  bios                = "ovmf"
  scsi_hardware       = "virtio-scsi-pci"
  boot_order          = ["scsi0"]
  kvm_arguments       = "-fw_cfg name=opt/ovmf/X-PciMmio64Mb,string=65536"

  cpu {
    cores   = 6
    sockets = 1
    type    = "host"
  }

  memory {
    dedicated = 12288
  }

  disk {
    datastore_id      = var.datastore_id
    interface         = "scsi0"
    path_in_datastore = "vm-102-disk-0"
    size              = 32
    file_format       = "raw"
    aio               = "io_uring"
    discard           = "on"
    ssd               = true
  }

  efi_disk {
    datastore_id      = var.datastore_id
    file_format       = "raw"
    pre_enrolled_keys = false
    type              = "4m"
  }

  hostpci {
    device = "hostpci0"
    id     = "0000:05:00"
    pcie   = true
    rombar = true
  }

  hostpci {
    device = "hostpci1"
    id     = "0000:06:00"
    pcie   = true
    rombar = true
  }

  network_device {
    bridge   = var.network_bridge
    model    = "virtio"
    firewall = true
  }

  operating_system {
    type = "l26"
  }

  agent {
    enabled = false
  }

  serial_device {
    device = "socket"
  }

  vga {
    type   = "serial0"
    memory = 16
  }
}

resource "proxmox_virtual_environment_vm" "kube-prod-3" {
  node_name = var.proxmox_node
  vm_id     = 103
  name      = "kube-prod-3"
  tags      = ["kubernetes", "talos", "worker"]

  started             = true
  on_boot             = true
  reboot_after_update = false
  machine             = "q35"
  bios                = "seabios"
  scsi_hardware       = "virtio-scsi-pci"
  boot_order          = ["scsi0", "net0"]

  cpu {
    cores   = 6
    sockets = 1
    type    = "host"
  }

  memory {
    dedicated = 12288
  }

  disk {
    datastore_id      = var.datastore_id
    interface         = "scsi0"
    path_in_datastore = "vm-103-disk-0"
    size              = 32
    file_format       = "raw"
    aio               = "io_uring"
    discard           = "on"
    ssd               = true
  }

  network_device {
    bridge   = var.network_bridge
    model    = "virtio"
    firewall = true
  }

  operating_system {
    type = "l26"
  }

  agent {
    enabled = false
  }
}
