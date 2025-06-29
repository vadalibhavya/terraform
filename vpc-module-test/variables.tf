variable "project" {
  type = string
  default = "roboshop"
}
variable "env" {
  type = string
  default = "dev"
}
variable "public_subnet_cidr" {
  type = list(string)
  default = ["10.0.1.0/24","10.0.2.0/24"]

}
variable "private_subnet_cidr" {
  type = list(string)
  default = ["10.0.11.0/24","10.0.12.0/24"]
}
variable "db_subnet_cidr" {
  type = list(string)
  default = ["10.0.21.0/24","10.0.22.0/24"]
}

variable "is_peering_required" {
  default = "true"
}