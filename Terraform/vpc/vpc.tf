module "vpc" {
  source                        = "git::git@github.com:terraform-aws-modules/terraform-aws-vpc.git"
  name                          = local.resource_prefix
  cidr                          = var.cidr
  azs                           = var.azs
  tags                          = merge(var.common_tags, var.vpc_tags)
  vpc_tags                      = merge(var.common_tags, var.vpc_tags)
  private_subnets               = var.private_subnet_cidr
  private_subnet_tags           = merge(var.common_tags, var.private_subnet_tags)
  private_route_table_tags      = merge(var.common_tags, { Name = "${local.resource_prefix}-private-rt" })
  public_subnets                = var.public_subnet_cidr
  public_subnet_tags            = merge(var.common_tags, var.public_subnet_tags)
  public_route_table_tags       = merge(var.common_tags, { Name = "${local.resource_prefix}-public-rt" })
  enable_nat_gateway            = var.enable_nat_gateway
  single_nat_gateway            = var.single_nat_gateway
  enable_dns_hostnames          = true
}

tags = {
    Terraform = "true"
    Environment = "test-assignment"
  }
}
