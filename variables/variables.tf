variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
  
}
variable "instance_type" {
    default = "t2.micro"
}

variable "cidr_blocks" {
    default = ["0.0.0.0/0"]
  
}