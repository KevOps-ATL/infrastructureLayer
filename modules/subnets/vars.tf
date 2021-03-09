# Variables we can pass to the resource
variable "subs" {
  type = map(any)
  default = {
    public = {
      name              = "publicSubnet"
      cidr_block        = "10.0.1.0/24"
      availability_zone = "us-east-1a"
    }
    private = {
      name              = "privateSubnet"
      cidr_block        = "10.0.2.0/24"
      availability_zone = "us-east-1b"
    }

  }
}
# The vpc_id output from the vpc module is turned into a map in order to iterate for each vpc_name
variable "vpc_id" {
  type        = map(any)
  default     = { "vpc_name" = "vpc_id" }
  description = "vpc to associate subnets with"
}

