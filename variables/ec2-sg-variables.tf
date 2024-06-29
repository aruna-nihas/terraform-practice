resource "aws_instance" "ec2" {
    ami = var.ami_id
    instance_type = "t2.micro"
    tags = {
        Name = "Ec2"
    }
    vpc_security_group_ids = [aws_security_group.sg.id]
  
}
resource "aws_security_group""sg"{
    name = "allow-all-ports"
    tags = {
        Name = "Internet"
    }
    ingress {
        from_port = "0"
        to_port = "0"
        protocol = "tcp"
        cidr_blocks = var.cidr_blocks
    }
    egress {
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        cidr_blocks = var.cidr_blocks
    }
}