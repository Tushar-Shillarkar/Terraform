variable "instancetype" {
  default = "t3.micro"
}

variable "amiid" {
  description = "AMI ID"
  default     = "ami-0aaa636894689fa47"
}

variable "keyname" {
  description = "EC2 key pair"
  default     = ""
}

variable "countno" {
  default = 3
}

variable "disable_api_termination" {
  default = false
}

variable "sgid" {
  default = "sg-03005c7d8e2786c05"
}