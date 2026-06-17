terraform {}
#number-list

variable "num-list" {
    type = list(number)
    default = [ 1,2,3,4,5 ]
  
}

variable "person-list" {
    type = list(object({
      fname = string
      lname = string 
    }))
    default = [ {
      fname = "Gulab"
      lname = "jamun"
    }, {
        fname = "Kaju"
        lname = "Katli"
    } ]
}

variable "map-list" {
    type = map(number)
    default = {
      "one " = 1
      "two" =2
      "three" =3
    }
  
}#Calculation

locals {
    multiply =2 * 2
    add = 2 + 3
    eq = 2 != 3

    double = [for num in var.num-list : num * 2]
    fname_list =[ for person in var.person-list: person.fname]
}


output "output" {
    value = local.fname_list
}
/*output "output1" {
    value = local.add
}
output "output2" {
    value = local.eq
}*/  
