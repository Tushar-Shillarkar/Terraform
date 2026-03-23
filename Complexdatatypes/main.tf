provider "aws" {
profile = "configs"
region = "ap-south-1"
}

resource "aws_instance" "webserver" {
    amiid = var.amiid
    instance_type = var.instance_type
    key_name = var.key
    vpc_security_groups_ids = ["sg-0663f01f023943ec3"]
}