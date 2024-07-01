variable "cidr_block" {
  description = "CIDR block for the VPC"
}

variable "vpc_name" {
  description = "Name tag for the VPC"
}

variable "environment" {
    description = "Environment,set in spacelift or use default"
}