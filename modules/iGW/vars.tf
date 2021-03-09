variable "gateway" {
  type = map(any)
  default = {
    igw = {
      vpc_id = "KevOpsVPC"
    }
  }
}
variable "vpc_id" {
  type        = map(any)
  default     = { "vpc_name" = "vpc_id" }
  description = "vpc to associate subnets with"
}
