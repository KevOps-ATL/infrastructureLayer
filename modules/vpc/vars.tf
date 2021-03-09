# Variables we can pass to the resource
variable "vpc_map" {
  type = map(any)
  default = {
    plainVPC = {
      name       = "ghostNetwork"
      cidr_block = "10.0.0.0/16"
    }

  }
}
