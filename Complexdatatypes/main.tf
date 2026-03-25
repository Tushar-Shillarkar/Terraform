provider "aws" {
profile = "configs"
region = "ap-south-1"
}

resource "aws_instance" "webserver" {
    ami = var.this_map.amiws
    instance_type = var.this_list[0]
    key_name = var.this_any.wskeymaps.kp1
    vpc_security_group_ids = ["sg-0663f01f023943ec3"]
  
}

