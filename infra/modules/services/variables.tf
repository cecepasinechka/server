variable "global" {
  type = object({
    base_image_id = map(string)
    private_network_id = string
  })
}

variable "public_network_interface" {
  type = string
}
