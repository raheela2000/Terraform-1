provider "aws" {
  region  = "ap-south-1"
  access_key  = "***********"
  secret_key  = "*******************"
}

resource "aws_instance" "web" {
  ami  = "ami-0f1fb91a596abf28d"
  instance_type  = "t2.micro"

  tags = {
    Name = "Hello World"
}
}
