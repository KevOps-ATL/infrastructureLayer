variable "nats" {
  type = map(any)
  default = {
    natgw = {
      subnet_id = "KevOpsVPC"
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
