variable "region" {
default = "ap-south-1"
}
variable "instance_type" {
default = "t2.micro"
}
variable "creds" {
default = "/root/terraforms/assignment/.aws/credentials"
}
variable "instance_key" {
default = ".pem"
}
variable "vpc_cidr" {
default = "178.0.0.0/16"
}
variable "public_subnet_cidr" {
default = "178.0.10.0/24"
}
