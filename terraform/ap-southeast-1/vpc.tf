module "vpc" {
  source  = "app.terraform.io/tnx-journey-to-cloud/vpc/aws"
  version = "1.1.5"

  for_each = var.vpc

  vpc_name       = each.key
  vpc_cidr_block = each.value.vpc_cidr_block
  subnets        = each.value.subnets
  prefix         = local.app_env_prefix
  # peered_vpcs    = try(each.value.peered_vpcs, {})
  endpoints = try(each.value.endpoints,[])
  tags = {
    "kubernetes.io/cluster/${local.app_env_prefix}-eks-test" = "spoke"
  }
  route_table_setting = try(each.value.route_table_setting,{})
  igw_config = try(each.value.igw_config,{})
  ngw_config = try(each.value.ngw_config,{})
}

###############################
##  VPC Endpoint
###############################
# locals {
#   endpoints      = [ "ssm", "ssmmessages", "ec2messages" ]
# }
