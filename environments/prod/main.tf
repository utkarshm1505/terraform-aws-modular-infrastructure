provider "aws" {
  region = var.region
}

module "iam" {
  source = "../../modules/iam"

  users = ["prod-user1","prod-user2","prod-user3"]

  group_name = "prod-group"

  group_policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"

  user_policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "prod-vpc"
  cidr = var.vpc_cidr

  azs             = ["us-east-1a","us-east-1b"]
  public_subnets  = ["10.1.1.0/24","10.1.2.0/24"]
  private_subnets = ["10.1.3.0/24","10.1.4.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = false
}

module "ec2" {
  source = "../../modules/ec2"

  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = module.vpc.public_subnets[0]
}