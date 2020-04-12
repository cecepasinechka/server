resource "libvirt_network" "private_network" {
  name = "private_network"
  mode = "nat"
  autostart = true

  addresses = ["10.17.3.0/24"]

  dhcp {
    enabled = true
  }
  dns {
    enabled = true
  }
}
