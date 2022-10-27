variable "linux_image" {
  type        = string
  description = "image name of Linux machine default is Ubuntu 22.10 Minimal"
  default     = "ubuntu-minimal-2210-amd64"
}

variable "windows_image" {
  type        = string
  description = "Image name of Windows machine default is Microsoft Windows Server 2022 Datacenter"
  default     = "windows-2022"
}

variable "linux_instance_type" {
  type        = string
  description = "Instance Type for Linux machine, default is n2.micro"
  default     = "e2-micro"
}

variable "windows_instance_type" {
  type        = string
  description = "Instance Type for Windows machine, default is n2.micro"
  default     = "e2-micro"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR of VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  type        = list(string)
  description = "List of public subnets cidrs in VPC"
  default     = ["10.0.4.0/24"]
}

variable "region" {
  type = string
  description = "Region"
  default = "us-west1"
}

variable "zone" {
  type = string
  description = "Zone"
  default = "us-west1-a"
}