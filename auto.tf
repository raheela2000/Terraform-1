provider "aws" {
  region  = "ap-south-1"
  access_key  = "AKIA5KITMAFYMBN6XVVD"
  secret_key  = "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"
}

resource "aws_launch_template" "auto_scale" {
  name_prefix = "auto_scale"
  image_id    = "ami-0002bdad91f793433"
  instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "bar" {
  availability_zones = ["ap-south-1a"]
  desired_capacity = 1
  max_size  = 4
  min_size  = 1

  launch_template {
    id  = aws_launch_template.auto_scale.id
    version  = "$Latest"
  }
}
