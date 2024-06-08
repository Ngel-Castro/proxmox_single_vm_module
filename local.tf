locals {
  vm_ip = proxmox_vm_qemu.vm.default_ipv4_address
  vm_id = proxmox_vm_qemu.vm.vmid
}