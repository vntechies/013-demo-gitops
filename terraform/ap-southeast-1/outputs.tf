
output "vpc_ids" {
  value = {
    for k, v in module.vpc : k => v.vpc_id
  }
}

output "subnet_ids" {
  value = {
    for k, v in module.vpc : k => v.subnet_ids
  }
}

output "eks_cluster_id" {
  value = module.eks.eks_cluster_id
}

output "eks_cluster_arn" {
  value = module.eks.eks_cluster_arn
}

output "eks_cluster_name" {
  value = module.eks.eks_cluster_name
}

output "eks_cluster_endpoint" {
  value = module.eks.eks_cluster_endpoint
}

output "aws_iam_openid_connect_provider_arn" {
  value = module.eks.aws_iam_openid_connect_provider_arn
}
