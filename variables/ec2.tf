resource "aws_instance" "roboshop" {
  ami           = "ami-09c7f895b24c5d8af"
  instance_type = "t3.micro"

  vpc_security_group_ids = [aws_security_group.allow_all.id]
  tags = {
    Name = "roboshop"
  }
}

resource "aws_security_group" "allow_all" {
  name        = "allow_all-terraform"
  description = "Allow all inbound traffic"
  tags = {
    Name = "allow_all"
  }

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}