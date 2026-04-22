module "vpc" {
  # source = "../terraform-aws-vpc"
  source = "git::https://github.com/AnilAttada/terraform-aws-vpc.git?ref=main" #reffering = main branch
  project = var.project
  environment = var.environment
  public_subnet_cidr_block = var.public_subnet_cidrs
  private_subnet_cidr_block = var.private_subnet_cidrs
  database_subnet_cidr_block = var.database_subnet_cidrs

  # is_peering_required = true
}