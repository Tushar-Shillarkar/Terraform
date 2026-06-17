
data "aws_ami" "name" {
  most_recent = true
  owners      = ["amazon"]
}

output "aws_ami" {
  value = data.aws_ami.name.id

}

data "aws_security_group" "name" {
  tags = {
    name = "my-sg"
  }

}
output "security_group" {
  value = data.aws_security_group.name.id

}

data "aws_vpc" "name" {
    tags = {
        name = "my-vpc"
    }
  
}
output "vpc_id" {
    value = data.aws_vpc.name.id
  
}

output "vpc_cidr_block" {
  value = data.aws_vpc.name.cidr_block
}

data "aws_availability_zones" "names" {
    state = "available"

  
}
output "names" {
    value = data.aws_availability_zones.names
  
}
data "aws_caller_identity" "name" {
  
}
output "caller-info" {
    value = data.aws_caller_identity.name
  
}
data "aws_subnet" "name" {
  tags = {
    Name = "my-sub"
  }
}
output "aws_subnet" {
  value = data.aws_subnet.name.id
  
}


resource "aws_instance" "myserver" {
  ami           = data.aws_ami.name.id
  instance_type = "t3.micro"
  subnet_id =  data.aws_subnet.name.id
  vpc_security_group_ids = [data.aws_security_group.name.id]
  tags = {
    Name = "myserver"
  }
}

