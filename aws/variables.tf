variable "linux_ami" {
  type        = string
  description = "Ami of Linux machine default is Ubuntu Server 22.04 LTS (HVM), SSD Volume Type"
  default     = "ami-096800910c1b781ba"
}

variable "windows_ami" {
  type        = string
  description = "Ami of Windows machine default is Microsoft Windows Server 2019 Base"
  default     = "ami-0ee8bb6c8e30a163c"
}

variable "linux_instance_type" {
  type        = string
  description = "Instance Type for Linux machine, default is t2.micro"
  default     = "t2.micro"
}

variable "windows_instance_type" {
  type        = string
  description = "Instance Type for Linux machine, default is t2.micro"
  default     = "t2.micro"
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
