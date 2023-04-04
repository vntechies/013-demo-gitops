terraform {
  experiments = [module_variable_optional_attrs]

  required_version = ">= 1.2.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.61.0"
    }
  }

  backend "s3" {
    bucket = "atlantis-2023"
    key    = "hungran/terraform.tfstate"
    region = "ap-southeast-1"
  }
}

provider "aws" {
  region = var.region
  default_tags {
      tags = var.default_tags
  }
}
