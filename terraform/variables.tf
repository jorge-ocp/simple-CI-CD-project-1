variable "region" {
    type = string
    default = "us-east-2"
  
}

variable "ami" {
    type = string
    default = "ami-02f3416038bdb17fb"
    description = "operating system for vms"
  
}

variable "vm_type" {
    type = string
    default = "t2.micro"
    description = "vm size"
  
}