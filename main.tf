resource "proxmox_vm_qemu" "vm" {
    name        = var.name
    target_node = var.target_node
    memory      = var.memory
    cores       = 2
    scsihw      = "virtio-scsi-single"
    full_clone  = var.full_clone
    agent       = 1
    qemu_os     = "l26"
    tags        = "terraform"

    ### or for a Clone VM operation
    clone = var.template_name
    disks {
        scsi {
            scsi0 {
                disk {
                    backup             = true
                    cache              = "none"
                    discard            = true
                    emulatessd         = true
                    iothread           = true
                    mbps_r_burst       = 0.0
                    mbps_r_concurrent  = 0.0
                    mbps_wr_burst      = 0.0
                    mbps_wr_concurrent = 0.0
                    replicate          = true
                    size               = var.storage_size
                    storage            = var.storage
                }
            }
        }
    }
    network {
        bridge    = var.network_bridge
        firewall  = false
        link_down = false
        model     = "virtio"
    }
}