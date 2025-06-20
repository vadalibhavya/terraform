module "vpc"{
	source = "../terraform-aws-vpc-module"
	project = "roboshop"
	env = "dev"
  public_subnet_cidr=["10.0.1.0/24","10.0.2.0/24"]

}