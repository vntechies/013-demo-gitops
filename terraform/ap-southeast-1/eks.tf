# module "eks" {
#   source  = "app.terraform.io/tnx-journey-to-cloud/eks/aws"
#   version = "1.0.3"

#   name        = var.eks.name
#   prefix      = local.app_env_prefix
#   subnet_ids  = toset(data.aws_subnets.eks_vpc_subnets.ids)
#   cluster_version = var.eks.cluster_version

#   create_aws_auth_configmap = var.eks.create_aws_auth_configmap
#   manage_aws_auth_configmap = var.eks.manage_aws_auth_configmap

#   irsa_enabled = var.eks.irsa_enabled
#   irsa         = var.eks.irsa
#   cluster_addons  = var.eks.cluster_addons
#   node_groups = var.eks.node_groups
# }

# data "aws_subnets" "eks_vpc_subnets" {
#   filter {
#     name   = "vpc-id"
#     values = [module.vpc[var.eks.vpc_name].vpc_id]
#   }
# }
