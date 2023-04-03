<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.61.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc"></a> [vpc](#module\_vpc) | app.terraform.io/tnx-journey-to-cloud/vpc/aws | 1.1.7 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | (Required) Default tag for AWS resource | `map` | <pre>{<br>  "component": "terraform",<br>  "env": "demo",<br>  "github_repo": "github.com/tnx-journey-to-cloud/demo-aws-cloudday-vn",<br>  "project": "demo-aws-cloudday-vn"<br>}</pre> | no |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"ap-southeast-1"` | no |
| <a name="input_vpc"></a> [vpc](#input\_vpc) | n/a | `map` | <pre>{<br>  "demo-vpc": {<br>    "endpoints": [],<br>    "igw_config": {<br>      "igw_enable": true,<br>      "rtb_name": "public_rtb"<br>    },<br>    "route_table_setting": {},<br>    "subnets": {<br>      "public_subnet1": {<br>        "az": "ap-southeast-1a",<br>        "cidr": "10.0.1.0/24",<br>        "route_table_name": "public_rtb",<br>        "subnet_tags": {<br>          "group": "public_subnet",<br>          "public_subnet1": "ap-southeast-1a"<br>        }<br>      },<br>      "public_subnet2": {<br>        "az": "ap-southeast-1b",<br>        "cidr": "10.0.2.0/24",<br>        "route_table_name": "public_rtb",<br>        "subnet_tags": {<br>          "group": "public_subnet",<br>          "public_subnet2": "ap-southeast-1b"<br>        }<br>      },<br>      "public_subnet3": {<br>        "az": "ap-southeast-1c",<br>        "cidr": "10.0.3.0/24",<br>        "route_table_name": "public_rtb",<br>        "subnet_tags": {<br>          "group": "public_subnet",<br>          "public_subnet3": "ap-southeast-1c"<br>        }<br>      }<br>    },<br>    "vpc_cidr_block": "10.0.0.0/16"<br>  }<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet_ids"></a> [subnet\_ids](#output\_subnet\_ids) | n/a |
| <a name="output_vpc_ids"></a> [vpc\_ids](#output\_vpc\_ids) | n/a |
<!-- END_TF_DOCS -->