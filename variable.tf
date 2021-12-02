variable "aws_region" {
  default = "ap-south-1"
}

variable "key_name" {
  default = "iamubumtu"
}

variable "ec2_types" {
  default ="t2.micro"
}

variable "region_ami" {
  type =map
  default = {
    ap-south-1 = "ami-0002bdad91f793433"
    ap-south-1 = "ami-052cef05d01020f1d"
  }
}
