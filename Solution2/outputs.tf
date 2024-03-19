# # VPC Outputs
# output "vpc_id" {
#   description = "The ID of the VPC"
#   value       = module.vpc.vpc_id
# }
# output "vpc_cidr_block" {
#   description = "The CIDR block of the VPC"
#   value       = module.vpc.vpc_cidr_block
# }
# output "private_subnets" {
#   description = "List of IDs of private subnets"
#   value       = module.vpc.private_subnets
# }
# output "public_subnets" {
#   description = "List of IDs of public subnets"
#   value       = module.vpc.public_subnets
# }
# output "nat_public_ips" {
#   description = "List of public Elastic IPs created for AWS NAT Gateway"
#   value       = module.vpc.nat_public_ips
# }
# output "azs" {
#   description = "A list of availability zones spefified as argument to this module"
#   value       = module.vpc.azs
# }

# # Public Bastion Host Security Group Outputs
# output "public_bastion_sg_group_id" {
#   description = "The ID of the security group"
#   value       = module.public_bastion_sg.security_group_id
# }
# output "public_bastion_sg_group_vpc_id" {
#   description = "The VPC ID"
#   value       = module.public_bastion_sg.security_group_vpc_id
# }
# output "public_bastion_sg_group_name" {
#   description = "The name of the security group"
#   value       = module.public_bastion_sg.security_group_name
# }

# # Private EC2 Instance Security Group Outputs
# output "private_sg_group_id" {
#   description = "The ID of the security group"
#   value       = module.private_sg.this_security_group_id
# }
# output "private_sg_group_vpc_id" {
#   description = "The VPC ID"
#   value       = module.private_sg.this_security_group_vpc_id
# }
# output "private_sg_group_name" {
#   description = "The name of the security group"
#   value       = module.private_sg.this_security_group_name
# }

# # Public EC2 Instance - Bastion Host
# output "ec2_bastion_public_instance_ids" {
#   description = "List of IDs of instances"
#   value       = module.ec2_public.id
# }
# output "ec2_bastion_public_ip" {
#   description = "List of Public ip address assigned to the instances"
#   value       = module.ec2_public.public_ip
# }

# # Private EC2 Instance
# output "ec2_private_instance_ids" {
#   description = "List of IDs of instances"
#   value       = module.ec2_private.id
# }
# output "ec2_private_ip" {
#   description = "List of private ip address assigned to the instances"
#   value       = module.ec2_private.private_ip
# }

# THE END
# output "ci-server-url" {
#  value          = join("", ["http://", module.ec2_public.public_dns, ":", "8080"])
# }
# output "ec2-ssh-command" {
#  value          = join("", ["ssh -i local_private_key.pem ec2-user@", module.ec2_public.public_dns])
# }
