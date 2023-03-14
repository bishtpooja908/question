rovider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "ubuntu1" {
  ami                         = var.ami_ids.ubuntu
  instance_type               = var.instance_type
  security_groups             = var.security_groups
  key_name                    = var.key_name
  user_data = file(var.userdata_file_path)
  

  tags = {
    Name = "Ubuntu1"
  }
}
resource "aws_instance" "ubuntu2" {
  ami                         = var.ami_ids.ubuntu
  instance_type               = var.instance_type
  security_groups             = var.security_groups
  key_name                    = var.key_name
  user_data = file(var.userdata_file_path)

  

  tags = {
    Name = "Ubuntu2"
  }
}
resource "aws_instance" "amazonlinux" {
  ami                         = var.ami_ids.amazonlinux
  instance_type               = var.instance_type
  security_groups             = var.security_groups
  key_name                    = var.key_name
  user_data = file(var.userdata_file_path)

  

  tags = {
    Name = "AmazonLinux"
  }
}