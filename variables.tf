variable "env" {
  description = "Environment name "
  type        = string
  default = "dev"
}

variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-southeast-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default = "10.0.0.0/22"
}

variable "subnet_cidrs" {
  description = "List of subnet CIDRs"
  type        = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "azs" {
  description = "List of availability zones for subnets"
  type        = list(string)
  default = ["ap-southeast-1a", "ap-southeast-1b"]
}
