resource "proxmox_vm_qemu" "ferry01" {

# VM config

    name = "ferry01"
    desc = "LAP stack, Ubuntu 20.0.4"
    vmid = "200"
    target_node = "proxmox"

    agent = 1

    clone = "ubuntu-server-focal"
    cores = 2
    sockets = 1
    cpu = "qemu64"
    memory = 2048

    network {
        bridge = "vmbr12"
        model = "virtio"
    }

    disk {
        storage = "local-zfs"
        type = "virtio"
        size = "20G"
    }

# cloud init config

    os_type = "cloud-init"
    ipconfig0 = "ip=172.16.12.100/24,gw=172.16.12.254"
    nameserver = "172.16.12.254"
    ciuser = "tan"
    sshkeys = <<EOF
    ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCno6tIlTbMDfrlB/vjZtXesg8UgGKZirHI9e9zo+oBJYHcjJx0xqQsLUcf82pbKyJSULlA4ZqVufpSosVRpRd9kcwj5w29Okah80Dw+2x6sbU4rN22gSS9Aq74DYai29maMIYY6bsHNn2fCnQtI7Ax2n5E5f/4hJj4hdsCS4x4njScwLayKPe6UJ++OYe4/Vsf9B8sWfZpOGmD83cZHqnGyLg2SHy2Bah4v5F3fmgCOJ3dgD8v4k0a+9fPKOf3PQ4FqyrXXmQjXf20Z/73RXimL9Vbrrk9WdbF1fijlCiSBcUOt+Kany5Uk7GNluKlagwfsIhdQu4UZm5Sx620DUiUwNhNPuz6cx2ezycGVlOkkTyyFXmfp1cSvuwek9GbXJviEPnQ21T4zA1sOrLl2kuUe4MUGkKpjTGKe6Wyh35zu4eV1inBrbGqE86MzNIWHcalXxsFxHU/RK3VYC6TPvVWGubEG36tsoipGtu4EixHnWceTZ6LddQ5IFJC6Eb1Uj1orUss4LTqOv/+kbuj7YoUrRKDH2b0dLps4Z+XLckZ3inYmjsRLyr8b2lZQo02wpWXWnFK2IgsbbQtP2rHXrPJXGxoFWudRugPOaNNduLSWMAK/RNXcCdKXCjq2fNCH3eVfAbJH7jjRkILa33hSsJcmFUrU05i/LEBsqYXIe0EuQ== thoma@Thomas-Desktop
    EOF
}