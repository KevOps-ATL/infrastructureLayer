variable "vpc" {
  type = map(any)
  default = {
    /*testkey = {
      name       = "thisnetwork"
      cidr_block = "11.0.0.0/16"
    }*/
    KevOpsVPC = {
      cidr_block = "10.0.0.0/16"
    }
  }
}

variable "subnets" {
  type = map(any)
  default = {
    KevOpsPub = {
      name              = "publicSubnet"
      cidr_block        = "10.0.1.0/24"
      availability_zone = "us-east-1a"
      vpc_id            = "KevOpsVPC"
    }
    KevOpsPriv = {
      name              = "privateSubnet"
      cidr_block        = "10.0.2.0/24"
      availability_zone = "us-east-1b"
      vpc_id            = "KevOpsVPC"
    }

  }
}

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

/* variable "eips" {
  type    = bool
  default = true
}

 variable "nats" {
  type = map(any)
  default = {
    private1 = {
      allocation_id = "ateway1g"
      subnet_id     = "subnet_id"
    }
  }
}
*/
