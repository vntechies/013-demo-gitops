variable "default_tags" {
  description = "(Required) Default tag for AWS resource"
  default = {
    env         = "demo"
    project     = "demo-aws-cloudday-vn"
    github_repo = "github.com/tnx-journey-to-cloud/demo-aws-cloudday-vn"
    component   = "terraform"
  }
}

variable "vpc" {
  default = {
    demo-vpc = {
      igw_config = { 
          igw_enable = true, 
          rtb_name = "public_rtb" 
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
          cidr = "10.0.1.0/24"
          az   = "ap-southeast-1a"
          subnet_tags = {
            "public_subnet1" = "ap-southeast-1a"
            "group" = "public_subnet"
          }
        },
        public_subnet2 = {
          route_table_name = "public_rtb"
          cidr = "10.0.2.0/24"
          az   = "ap-southeast-1b"
          subnet_tags = {
            "public_subnet2" = "ap-southeast-1b"
            "group" = "public_subnet"
          }
        },
        public_subnet3 = {
          route_table_name = "public_rtb"
          cidr = "10.0.3.0/24"
          az   = "ap-southeast-1c"
          subnet_tags = {
            "public_subnet3" = "ap-southeast-1c"
            "group" = "public_subnet"
          }
        }
      }
    }
}