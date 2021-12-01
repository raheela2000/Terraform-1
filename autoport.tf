provider "aws" {
  region  = "ap-south-1"
  access_key  = "AKIA5KITMAFYMBN6XVVD"
  secret_key  = "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"
}

variable "ingressrules" {
  type = list(number)
  default = [80,443]
}

variable "egressrules" {
  type = list(number)
  default = [80,443,25,3306,53,8080]
}

resource "aws_instance" "web" {
  ami  = "ami-0f1fb91a596abf28d"
  instance_type  = "t2.micro"
  security_groups = [aws_security_group.global.name]
  tags = {
    Name = "With-VPC"
}
}

resource "aws_security_group" "global" {
  name = "Allow HTTPsh2021"
  
   dynamic "ingress" {
     iterator  = port
     for_each  = var.ingressrules
     content {
     from_port = port.value
     to_port   = port.value
     protocol  = "TCP"
     cidr_blocks = ["0.0.0.0/0"]
    }
  }
  
   dynamic "egress" {
     iterator  = port
     for_each  = var.egressrules
     content {
     from_port = port.value
     to_port   = port.value
     protocol  = "TCP"
     cidr_blocks = ["0.0.0.0/0"] 
  }
}
}
