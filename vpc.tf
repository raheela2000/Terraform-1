provider "aws" {
  region  = "ap-south-1"
  access_key  = "AKIA5KITMAFYMBN6XVVD"
  secret_key  = "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"
}

resource "aws_instance" "web" {
  ami  = "ami-0f1fb91a596abf28d"
  instance_type  = "t2.micro"
  security_groups = [aws_security_group.global.name]
  tags = {
    Name = "With VPC"
}
}

resource "aws_security_group" "global" {
  name = "Allow httpssh"
  
  ingress {
    protocol  = "TCP"
    cidr_blocks  = ["0.0.0.0/0"]
    from_port = 443
    to_port   = 443
  }
  
  egress {
    from_port  = 443
    to_port    = 443
    protocol   = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
