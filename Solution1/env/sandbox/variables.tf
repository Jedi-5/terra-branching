# Project-level
variable "project_name" {
  description = "Project Name"
  type        = string
}
variable "environment" {
  description = "Environment Details"
  type        = string
}
variable "region" {
  description = "AWS Region"
  type        = string
}

# VPC
variable "vpc_name" {
  description = "VPC Name"
  type        = string
}
variable "vpc_cidr" {
  description = "VPC_CIDR"
  type        = string
}
variable "vpc_azs" {
  description = "VPC AZs"
  type        = list(any)
}
variable "vpc_enable_nat" {
  description = "Enable NAT gateway for VPC"
  type        = bool
}
variable "vpc_enable_vpn" {
  description = "Enable VPN gateway for VPC"
  type        = bool
}
variable "rt_cidr" {
  description = "VPC_CIDR"
  type        = string
}
variable "security_group" {
  description = "Security Group"
  type        = string
}
variable "private_subnet_cidrs" {
  description = "PrivateSubnet_CIDR"
  type        = list(any)
}
variable "public_subnet_cidrs" {
  description = "PublicSubnet_CIDR"
  type        = list(any)
}
variable "db_subnet_cidrs" {
  description = "DBSubnet_CIDR"
  type        = list(any)
}

# EFS
# variable "efs_name" {
#   description = "EFS Name"
#   type        = string
# }
# variable "efs_token" {
#   description = "EFS Token"
#   type        = string
# }

# EC2
variable "instance_type" {
  description = "Instance Type"
  type        = string
}
variable "instance_name" {
  description = "Instance Name"
  type        = string
}
variable "instance_ami" {
  description = "Instance AMI"
  type        = string
}

# EIP
variable "eip_allocation" {
  description = "Elastic IP"
  type        = string
}

# S3 and DynamoDB
# variable "bucket_name" {
#   description = "Bucket Name"
#   type        = string
# }
# variable "acl_value" {
#   description = "ACL Value"
#   type        = string
# }
# variable "dynamo_table" {
#   description = "DynamoDB_Table Name"
#   type        = string
# }

# Keys
variable "key_name" {
  description = "CI_SSH Key"
  type        = string
}
