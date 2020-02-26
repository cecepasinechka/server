provider "libvirt" {
  uri = "qemu+ssh://user@lpm-server.feri.um.si:12022/system"
}

data "terraform_remote_state" "global" {
  backend = "local"
  
  config = {
    path = "../terraform.tfstate"
  }
}

module "services" {
  source = "../../modules/services"
  global = data.terraform_remote_state.global.outputs.global
  public_network_interface = "eno1"
}
