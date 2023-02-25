# resource "proxmox_vm_qemu" "dc01" {

# # VM config
#     name = "dc01"
#     desc = "Domain Controller 1"
#     vmid = "110"
#     target_node = "proxmox"
#     iso = "local:iso/Windows-Server-2019-EVAL-en-us.iso"

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