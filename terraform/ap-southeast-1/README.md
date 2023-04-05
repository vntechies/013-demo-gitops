<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.61.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.61.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks"></a> [eks](#module\_eks) | app.terraform.io/tnx-journey-to-cloud/eks/aws | 1.0.3 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | app.terraform.io/tnx-journey-to-cloud/vpc/aws | 1.1.7 |

## Resources

| Name | Type |
|------|------|
| [aws_eks_cluster.eks](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/data-sources/eks_cluster) | data source |
| [aws_eks_cluster_auth.eks](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/data-sources/eks_cluster_auth) | data source |
| [aws_subnets.eks_vpc_subnets](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/data-sources/subnets) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | (Required) Default tag for AWS resource | `map` | <pre>{<br>  "component": "cloud-day",<br>  "env": "demo",<br>  "github_repo": "github.com/tnx-journey-to-cloud/demo-aws-cloudday-vn",<br>  "project": "demo-aws-cloudday-vn"<br>}</pre> | no |
| <a name="input_eks"></a> [eks](#input\_eks) | n/a | `map` | <pre>{<br>  "cluster_addons": {<br>    "aws-ebs-csi-driver": {<br>      "name": "aws-ebs-csi-driver",<br>      "resolve_conflicts": "OVERWRITE",<br>      "version": "v1.17.0-eksbuild.1"<br>    },<br>    "cni": {<br>      "name": "vpc-cni",<br>      "resolve_conflicts": "OVERWRITE",<br>      "version": "v1.12.5-eksbuild.2"<br>    }<br>  },<br>  "cluster_version": "1.25",<br>  "create_aws_auth_configmap": false,<br>  "irsa": {<br>    "aws-ebs-csi-driver": {<br>      "kubernetes_namespace": "kube-system",<br>      "kubernetes_service_account": "ebscsi-controller-sa",<br>      "name": "aws-ebs-csi-driver"<br>    }<br>  },<br>  "irsa_enabled": true,<br>  "manage_aws_auth_configmap": true,<br>  "name": "demo-eks",<br>  "node_groups": {<br>    "workers-1-23": {<br>      "capacity_type": "SPOT",<br>      "desired_size": 2,<br>      "instance_types": [<br>        "t3a.medium"<br>      ],<br>      "max_size": 5,<br>      "min_size": 2,<br>      "version": "1.25"<br>    }<br>  },<br>  "vpc_name": "demo-vpc"<br>}</pre> | no |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"ap-southeast-1"` | no |
| <a name="input_vpc"></a> [vpc](#input\_vpc) | n/a | `map` | <pre>{<br>  "demo-vpc": {<br>    "endpoints": [],<br>    "igw_config": {<br>      "igw_enable": true,<br>      "rtb_name": "public_rtb"<br>    },<br>    "route_table_setting": {},<br>    "subnets": {<br>      "public_subnet1": {<br>        "az": "ap-southeast-1a",<br>        "cidr": "10.0.1.0/24",<br>        "route_table_name": "public_rtb",<br>        "subnet_tags": {<br>          "group": "public_subnet",<br>          "kubernetes.io/role/elb": "1",<br>          "public_subnet1": "ap-southeast-1a"<br>        }<br>      },<br>      "public_subnet2": {<br>        "az": "ap-southeast-1b",<br>        "cidr": "10.0.2.0/24",<br>        "route_table_name": "public_rtb",<br>        "subnet_tags": {<br>          "group": "public_subnet",<br>          "kubernetes.io/role/elb": "1",<br>          "public_subnet2": "ap-southeast-1b"<br>        }<br>      },<br>      "public_subnet3": {<br>        "az": "ap-southeast-1c",<br>        "cidr": "10.0.3.0/24",<br>        "route_table_name": "public_rtb",<br>        "subnet_tags": {<br>          "group": "public_subnet",<br>          "kubernetes.io/role/elb": "1",<br>          "public_subnet3": "ap-southeast-1c"<br>        }<br>      }<br>    },<br>    "vpc_cidr_block": "10.0.0.0/16"<br>  }<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_iam_openid_connect_provider_arn"></a> [aws\_iam\_openid\_connect\_provider\_arn](#output\_aws\_iam\_openid\_connect\_provider\_arn) | n/a |
| <a name="output_eks_cluster_arn"></a> [eks\_cluster\_arn](#output\_eks\_cluster\_arn) | n/a |
| <a name="output_eks_cluster_endpoint"></a> [eks\_cluster\_endpoint](#output\_eks\_cluster\_endpoint) | n/a |
| <a name="output_eks_cluster_id"></a> [eks\_cluster\_id](#output\_eks\_cluster\_id) | n/a |
| <a name="output_eks_cluster_name"></a> [eks\_cluster\_name](#output\_eks\_cluster\_name) | n/a |
| <a name="output_subnet_ids"></a> [subnet\_ids](#output\_subnet\_ids) | n/a |
| <a name="output_vpc_ids"></a> [vpc\_ids](#output\_vpc\_ids) | n/a |
<!-- END_TF_DOCS -->