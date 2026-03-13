#OutPut-Blocks
output "instance_pub_id"{
  value = aws_instance.webserver.public_ip
}

output "instance_pvt_id"{
  value = aws_instance.webserver.private_ip
}
