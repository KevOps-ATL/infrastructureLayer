# Variables we can pass to the resource

variable "nats" {
  type = map(any)
  default = {
    private1 = {
      allocation_id = "eip_id"
      subnet_id     = "subnet_id"
    }
  }
}


variable "tomato" {
  type        = map(any)
  default     = { "subnet_name" = "subnet_id" }
  description = "subnet to associate natgw with"
}

variable "eip" {
  type        = map(any)
  default     = { "eip_name" = "eip_id" }
  description = "eip to associate natgw with"
}

variable "vpc_map" {
  type        = map(any)
  default     = { "vpc_name" = "vpc_id" }
  description = "vpc to associate subnets with"
}

