module "vpc" {
    source  = "terraform-aws-modules/vpc/aws"
    version = "~> 5.1"

    name = "${var.project_name}-vpc"
    cidr = var.vpc_cidr

    azs             = var.azs
    public_subnets  = var.public_subnets
    private_subnets = var.private_subnets

    enable_nat_gateway     = true
    single_nat_gateway     = true
    enable_dns_hostnames   = true
    enable_dns_support     = true

    tags = {
    Project     = var.project_name
    Environment = var.environment
    }
}
