provider "aws" {
  region  = "ap-south-1"
  access_key  = "AKIA5KITMAFYMBN6XVVD"
  secret_key  = "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"
}

resource "aws_instance" "web" {
  ami  = "ami-0f1fb91a596abf28d"
  instance_type  = "t2.micro"

  tags = {
    Name = "Hello World"
}
}
