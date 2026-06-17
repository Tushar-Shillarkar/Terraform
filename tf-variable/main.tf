locals {
  owner ="ABC"
  name = "myserver"
}
resource "aws_instance" "myserver" {
  ami           = "ami-0aba19e56f3eaec05"
  instance_type = var.aws_instance_type

  root_block_device {
    delete_on_termination = true
    volume_size           = var.ec2-config.v-size
    volume_type           = var.ec2-config.v-type
}


  tags = merge(var.additional-tags, {
    Name = local.name
  })

}
