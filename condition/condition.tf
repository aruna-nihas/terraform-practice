resource "aws_instance" "web" {
    ami = var.ami_id
    instance_type = var.instance_names?"t3.micro":"t2.micro"
  
}