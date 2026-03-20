provider "aws" {
  profile = "configs"
  region  = "ap-south-1"

}
resource "aws_instance" "webserver" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [var.sg]


}

