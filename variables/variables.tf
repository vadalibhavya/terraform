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


variable "sg_name" {
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


variable "ipv6_cidr_block" {
  default = ["::/0"]
  type = list(string)
}

variable "env" {
  type = string
  default = "development"
}


variable "instances" {
  type = number
  default = length(var.instance_name)
}
variable "instance_name" {
  type = list(string)
  default = ["frontend", "catalogue", "cart", "user", "shipping", "payment", "mysql", "rabbitmq"]
}

variable "domain_name" {
  default = "doubtfree.online"
}

variable "zone_id" {
  default = "Z05489693LFV4727Y7R4T"
}

variable "type" {
  default = "A"
}

variable "ttl" {
  default = "5"
}