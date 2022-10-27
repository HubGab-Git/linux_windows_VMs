terraform {
  backend "gcs" {
    bucket = "linux-windows-tf-state"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.41.0"
    }
  }
}

provider "google" {
  project     = "linux-windows-366715"
  region      = var.region
  zone        = var.zone
  credentials = file("linux-windows.json")
}
locals {
  linux_windows = {
    "vm-nebo-linux" = {
      image         = var.linux_image,
      instance_type = var.linux_instance_type,
    },
    "vm-nebo-windows" = {
      image         = var.windows_image,
      instance_type = var.windows_instance_type,
    }
  }
}