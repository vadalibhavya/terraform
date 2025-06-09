variable "ami_id" {
 description = "ami id for the ec2 instance"
  default = "ami-09c813fb71547fc4f"
  type = string
}

variable "instance_type" {
  description = "instance type for the ec2 instance"
  default = "t3.micro"
  type = string
}

variable "ec2-tags" {
 default = {
  Name = "Robhoshop"
 }
}

variable "gd_name" {
  type = string
  default = "allow-all-terraform"
}

variable "sg_description" {
  type = string
  default = "Allow all inbound traffic"
}

variable "cidr_block" {
  type = list(string)
  default = ["0.0.0.0/0"]
}

variable "from_port" {
  type = number
  default = 0
}

variable "to_port" {
 type = number
 default = 0
}

variable "protocol" {
  type = string
  default = "-1"
}

variable "cidr_blocks" {
  type = list(string)
  default = ["0.0.0.0/0"]
}
