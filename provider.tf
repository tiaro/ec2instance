terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 5.45.0"  # AWS provider version, 5.45.*
        }
    }
    required_version = ">= 1.7.5, < 2.0.0"  # Terraform version
}

provider "aws" {
    region  = var.region
    profile = var.profile
}
