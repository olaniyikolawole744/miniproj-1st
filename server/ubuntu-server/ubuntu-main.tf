terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

module "server-generator" {
  source              = "../../modules"
  availability-zone   = var.az2
  role                = var.role2
  purpose             = var.purpose2
  index               = var.index2
  bootstrap-file-name = var.bootstrap-file-name
  inboundport         = var.inboundport
  machine-ami         = var.machine-ami
}