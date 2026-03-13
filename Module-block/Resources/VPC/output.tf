#OutPut-Blocks
output "vpc_id"{
  value = aws_vpc.webserver_vpc.id
}

output "Subnet_id"{
  value = aws_subnet.webserver_subnet.id
}
