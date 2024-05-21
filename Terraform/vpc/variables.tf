
variable "cidr" {}
variable "resource_prefix" {}
variable "env_code" {}
variable "public_subnet_cidr" {}
variable "private_subnet_cidr" {}


variable "azs" {
  description = "A list of availability zones in the region"
  type        = list(string)
  default     = []
}

variable "enable_nat_gateway" {
  description = "Should be true if you want to provision NAT Gateways for each of your private networks"
  default     = false
}

variable "single_nat_gateway" {
  description = "Should be true if you want to provision a single shared NAT Gateway across all of your private networks"
  default     = false
}

variable "one_nat_gateway_per_az" {
  description = "Should be true if you want only one NAT Gateway per availability zone. Requires `var.azs` to be set, and the number of `public_subnets` created to be greater than or equal to the number of availability zones specified in `var.azs`."
  default     = false
}

variable "public_subnet_tags" {
  description = "Additional tags for the public subnets"
  type        = map(any)
  default = {
    application_name                         = "public_subnet"
    service_component                        = "subnet"

  }
}

variable "private_subnet_tags" {
  description = "Additional tags for the private subnets"
  type        = map(any)
      default = {
    application_name  = "private_subnet"
    service_component = "subnet"

  }
}


variable "vpc_tags" {
  description = "Additional tags for the VPC"
  type        = map(any)
      default = {
    application_name  = "vpc"
    service_component = "vpc"
  }
}

variable "common_tags" {
  description = "Additional tags for the VPC"
  type        = map(any)
  default = {
    product_name = "test"
    team_name    = "test"
    env          = "test"
  }
}


