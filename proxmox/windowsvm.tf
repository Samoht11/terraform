# resource "proxmox_vm_qemu" "win11vm1" {

# # VM config

#     name = "win11vm1"
#     desc = "windows 11 vm 1"
#     vmid = "111"
#     target_node = "proxmox"
#     iso = "local:iso/Win11-English-x64.iso"

#     agent = 1

#     cores = 2
#     sockets = 1
#     cpu = "host"
#     memory = 4096
#     oncreate = false

#     network {
#         bridge = "vmbr10"
#         model = "virtio"
#     }

#     disk {
#         slot = 0
#         storage = "local-zfs"
#         type = "virtio"
#         size = "64G"
#     }
# }