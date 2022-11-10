terraform {
  backend "s3" {
    bucket         = "linux-windows-vms-tf-backend"
    key            = "tf.state"
    region         = "eu-west-1"
    dynamodb_table = "linux-windows-vms-tf-state-lock"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.31.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

locals {
  linux_windows = {
    "vm-nebo-linux" = {
      ami           = var.linux_ami,
      instance_type = var.linux_instance_type,
      get_password  = false
    },
    "vm-nebo-windows" = {
      ami           = var.windows_ami,
      instance_type = var.windows_instance_type,
      get_password  = true
    }
  }
  ports = {
    "SSH" = 22
    "RDP" = 3389
    "HTTPS" = 443
    "HTTP" = 80
  }
}