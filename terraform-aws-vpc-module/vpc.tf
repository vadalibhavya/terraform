resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  instance_tenancy     = default
  enable_dns_hostnames = true
  tags = merge(local.common_tags,
    {
      Name = "${var.project}-${var.env}-vpc"
    }
  )
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
  tags = merge(local.common_tags,
	{
	  Name = "${var.project}-${var.env}-igw"
	}
  )
}

resource "aws_subnet" "public_subnet" {
  count      = length(var.public_subnet_cidr)
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_cidr[count.index]
  availability_zone = local.az_names[count.index]
  map_public_ip_on_launch = true
  tags = merge(local.common_tags,
	{
	  Name = "${var.project}-${var.env}-public-subnet-${local.az_names[count.index]}"
	}
  )
}



