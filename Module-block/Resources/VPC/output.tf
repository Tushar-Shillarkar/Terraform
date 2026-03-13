
#OutPut-Block
output "instance_pub_id"{
  value = aws_instance.webserver.public_ip
}

output "instance_pvt_id"{
  value = aws_instance.webserver.private_ip
}
#data-block
data "aws_security_group" "webserversg"{
  name = "mysg"
}
