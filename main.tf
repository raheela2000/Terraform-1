provider "aws" {
  access_key = "***************"
  secret_key = "**********************"
  region = "ap-south-1"
}

provider "aws"{
  region =var.aws_region
  profile = "MyAWS"
  alias = "apsouth1"
}

resource "aws_instance" "dishnet" {
  ami  = lookup(var.region_ami, var.aws_region)
  instance_type  = "t2.micro"

  tags = { 
    Name= "helloWorld"
  }
}
