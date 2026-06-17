aws_instance_type = "t3.micro"

ec2-config = {
  v-size = 30
  v-type = "gp3"
}

additional_tags = {
  DEPT    = "QA"
  Project = "Terraform"

}


