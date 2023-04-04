variable "irsa" {

  default = {
    aaaa = {
      name                     = "aws-ebs-csi-driver"
      kubernetes_service_account = "ebscsi-controller-sa"
      kubernetes_namespace       = "kube-system"
      aws_managed_policy_arns       = ["dasd", "adad"]
    }
    bbbb = {
      name                     = "aaaaar"
      kubernetes_service_account = "aaaaaaa"
      kubernetes_namespace       = "kube-system"
      aws_managed_policy_arns       = ["abc", "xyz"]
    }
  }
}


 locals {
   a = [ for k, v in var.irsa: {for item, value in v.aws_managed_policy_arns: item => value} ]
}

output "a" {
  value = local.a

}

# output "b" {
#   b = { for }
# }
