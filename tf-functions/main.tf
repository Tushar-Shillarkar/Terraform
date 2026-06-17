terraform {}

locals {
  value ="Hello World"
}

variable "string-list" {
    type = list(string)
    default = ["serv-1" , "serv-2","serv-3" ]

}
output "output" {
      # value = upper(local.value)
     # value = startswith(local.value,"hello")
    #value = split(" ",local.value)
   # value = min(1,2,3,4,5)
  #value = abs(15.233)
 #value = length(var.string-list)
#value = join(":", var.string-list)
value = contains(var.string-list, "serv-1")
} 