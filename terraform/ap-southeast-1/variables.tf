variable "region" {
  default = "ap-southeast-1"
}
variable "default_tags" {
  description = "(Required) Default tag for AWS resource"
  default = {
    env         = "demo"
    project     = "demo-aws-cloudday-vn"
    github_repo = "github.com/tnx-journey-to-cloud/demo-aws-cloudday-vn"
    component   = "cloud-day"
  }
}

variable "vpc" {
  default = {
    demo-vpc = {
      igw_config = {
        igw_enable = true,
        rtb_name   = "public_rtb"
      }
      route_table_setting = {
        # "spokeA_rtb" = {
        #   tgw_route = {
        #     cidr_block = "0.0.0.0/0",
        #     transit_gateway_id = "tgw-0184bad64aa407024"
        #   }
        # }
      }
      endpoints      = []
      vpc_cidr_block = "10.0.0.0/16"
      subnets = {
        public_subnet1 = {
          route_table_name = "public_rtb"
          cidr             = "10.0.1.0/24"
          az               = "ap-southeast-1a"
          subnet_tags = {
            "public_subnet1" = "ap-southeast-1a"
            "group"          = "public_subnet"
          }
        },
        public_subnet2 = {
          route_table_name = "public_rtb"
          cidr             = "10.0.2.0/24"
          az               = "ap-southeast-1b"
          subnet_tags = {
            "public_subnet2" = "ap-southeast-1b"
            "group"          = "public_subnet"
          }
        },
        public_subnet3 = {
          route_table_name = "public_rtb"
          cidr             = "10.0.3.0/24"
          az               = "ap-southeast-1c"
          subnet_tags = {
            "public_subnet3" = "ap-southeast-1c"
            "group"          = "public_subnet"
          }
        }
      }
    }
  }
}

variable "eks" {
  default = {
    name = "demo-eks"
    node_groups = {
      "workers-1-23" = {
        desired_size   = 2
        max_size       = 5
        min_size       = 2
        instance_types = ["t3a.medium"]
        version        = "1.25"
        capacity_type  = "SPOT"
      }
    }
    vpc_name    = "demo-vpc"
    cluster_version = "1.25"

    create_aws_auth_configmap = true
    manage_aws_auth_configmap = true
    irsa_enabled              = true
    irsa = {
      aws-ebs-csi-driver = {
        name                     = "aws-ebs-csi-driver"
        kubernetes_service_account = "ebscsi-controller-sa"
        kubernetes_namespace       = "kube-system"
      }
    }
    cluster_addons = {
      aws-ebs-csi-driver = {
        name                      = "aws-ebs-csi-driver"
        version                   = "v1.17.0-eksbuild.1"
        resolve_conflicts         = "OVERWRITE"
      }
      cni = {
        name                      = "cni"
        version                   = "v1.12.5-eksbuild.2"
        resolve_conflicts         = "OVERWRITE"
      }
    }
  }
}
