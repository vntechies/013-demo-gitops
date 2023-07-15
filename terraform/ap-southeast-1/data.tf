data "aws_eks_cluster" "eks" {
  name       = module.eks.eks_cluster_name
  depends_on = [module.eks.eks_cluster_name]
}

data "aws_eks_cluster_auth" "eks" {
  name = module.eks.eks_cluster_name
}

