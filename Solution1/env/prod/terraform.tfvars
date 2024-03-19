# Project-level
project_name = "Loki"
environment  = "prod"
region       = "us-east-1"

# VPC
vpc_name             = "Loki-VPC"
vpc_cidr             = "10.0.0.0/16"
vpc_azs              = ["us-east-1a", "us-east-1b", "us-east-1c"]
vpc_enable_nat       = true
vpc_enable_vpn       = true
rt_cidr              = "0.0.0.0/0"
security_group       = "loki_sg"
private_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
public_subnet_cidrs  = ["10.0.101.0/24", "10.0.102.0/24"]
db_subnet_cidrs      = ["10.0.151.0/24", "10.0.152.0/24"]

# EFS
# efs_name           = "terra-loki"

# EC2
instance_type = "t2.micro"
instance_name = "JenkinsServer-Loki"
instance_ami  = "xyz"

# EIP
eip_allocation = "abc"

# S3 and DynamoDB
# bucket_name        = "terra-loki"
# acl_value          = "private"
# dynamo_table       = "terraform-state-lock-dynamo"

# Keys
key_name = "ssh_key"
