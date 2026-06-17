variable "aws_instance_type" {
  description = "what type of instance do you want"
  type        = string
  validation {
    condition     = var.aws_instance_type == "t3.micro" || var.aws_instance_type == "c7i.flex-large"
    error_message = "only t3 and c7"
  }
}


variable "ec2-config" {
  type = object({
    v-size = number
    v-type = string
  })
  default = {
    v-size = 20
    v-type = "gp2"
  }

}
variable "additional-tags" {
  type    = map(string)
  default = {}

}





