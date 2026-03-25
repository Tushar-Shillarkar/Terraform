variable "this_list" {
  default     = ["t3.micro"]
}

variable "this_map" {
    default = {
        amiws = "ami-0f559c3642608c138" ,
    keynamews = "mum-key"  }  
}


variable "this_any" {
    default = {
        wscount =2
        wsinsatncetype = ["t3.micro" "t3.small" "c7i-flex.large"]
        amiws = {
            ami1ws = "ami-05d2d839d4f73aafb"
            ami2ws = "ami-0f559c3642608c138"

        }
        wscountlist = [1 , 2 , 3]
      wskeymaps = {
        kp1 = "ohiokey"
        kp2 = "vpc"
      }

    }
}
