module "vpc" {
  source  = "terraform-aws-modules/sgc/aws"

  name                                = var.vpc_name
  cidr                                = var.vpc_cidr

  azs                                 = var.vpc_azs
  private_subnets                     = var.private_subnet_cidrs
  public_subnets                      = var.public_subnet_cidrs

  create_database_subnet_group        = true
  create_database_subnet_route_table  = true
  database_subnets                    = var.db_subnet_cidrs

  # enable_nat_gateway                  = var.vpc_enable_nat
  # single_nat_gateway                  = var.vpc_enable_nat
  # enable_vpn_gateway                  = var.vpc_enable_vpn

  enable_dns_hostnames                = true
  enable_dns_support                  = true

  tags = {
    Terraform                         = "true"
    Name                              = "${var.environment}-${var.project_name}-vpc"
    Environment                       = "${var.environment}"
  }
}

# Create Internet Gateway
resource "aws_internet_gateway" "gw" {
    depends_on          = [module.vpc]
    
    vpc_id              = module.vpc.vpc_id

    tags = {
        Terraform       = "true"
        Name            = "${var.environment}-${var.project_name}-gw"
        Environment     = "${var.environment}"
    }
}

# Create Route Table for Public Subnet
resource "aws_route_table" "rt" {
    depends_on          = [aws_internet_gateway.gw]

    vpc_id              = module.vpc.vpc_id

    route {
        cidr_block      = var.rt_cidr
        gateway_id      = "${aws_internet_gateway.gw.id}"
    }

    tags = {
      Terraform         = "true"
      Name              = "${var.environment}-${var.project_name}-rt"
      Environment       = "${var.environment}"
    }
}

# Create Route Table for Private Subnet
resource "aws_route_table" "private_rt" {
    depends_on          = [aws_internet_gateway.gw]

    vpc_id              = module.vpc.vpc_id

    route {
        cidr_block      = var.rt_cidr
        gateway_id      = "${aws_internet_gateway.gw.id}"
    }

    tags = {
      Terraform         = "true"
      Name              = "${var.environment}-${var.project_name}-private_rt"
      Environment       = "${var.environment}"
    }
}

# Associate Route Table to the Public Subnet
resource "aws_route_table_association" "rta" {
    depends_on          = [aws_route_table.rt]

    subnet_id           = "${module.vpc.public_subnets[0]}"
    route_table_id      = "${aws_route_table.rt.id}"  
}

# Associate Route Table to the Private Subnet
resource "aws_route_table_association" "private_rta" {
    depends_on          = [aws_route_table.private_rt]

    subnet_id           = "${module.vpc.private_subnets[0]}"
    route_table_id      = "${aws_route_table.private_rt.id}"  
}

# Create NAT Gateway with existing EIP
resource "aws_nat_gateway" "nat_gw" {
    depends_on          = [aws_internet_gateway.gw]

    allocation_id       = var.eip_allocation
    subnet_id           = "${module.vpc.public_subnets[0]}"

    tags = {
      Terraform         = "true"
      Name              = "${var.environment}-${var.project_name}-nat"
      Environment       = "${var.environment}"
    }
}
