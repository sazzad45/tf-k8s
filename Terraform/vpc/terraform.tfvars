resource_prefix = "assaignment-vpc"
env_code        = "test-vpc"
cidr            = "172.40.0.0/16"
env_region      = ap


private_subnet_cidr = ["172.40.0.0/22"]

public_subnet_cidr = ["172.40.100.0/22"]


azs = [
  "ap-southeast-1a",
  "ap-southeast-1b",
]

single_nat_gateway     = false
one_nat_gateway_per_az = false
