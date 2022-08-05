variable "region" {
    type = string
    default = "us-west-2"
  
}

variable "ami" {
    type = string
    default = "ami-0d70546e43a941d70"
    description = "operating system for vms"
  
}

variable "vm_type" {
    type = string
    default = "t2.micro"
    description = "vm size"
  
}