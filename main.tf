module "vpc" {
  source = "../terraform-aws-vpc"
  project = var.project
  environment = var.environment
  public_subnet_cidr_block = var.public_subnet_cidrs
  private_subnet_cidr_block = var.private_subnet_cidrs
  database_subnet_cidr_block = var.database_subnet_cidrs

  igw_tags = {
    Project = "vpc-module-igw"
  }
}