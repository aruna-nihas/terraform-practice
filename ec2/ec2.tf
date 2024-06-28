resource "aws_instance" "web" {
    instance_type = "t2.micro"
    ami = "ami-0b4f379183e5706b9"
    tags = {
        Name = "Ec2"
    }
  
}