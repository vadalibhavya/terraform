#create vpc
variable "project"	{
	type = string

}
variable "env"	{
	type = string

}
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  type = list(string)
  }