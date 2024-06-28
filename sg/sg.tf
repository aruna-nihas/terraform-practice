resource "aws_security_group" "all" {
    name = "allow-all-ports"
   # vpc_security_group_ids = [aws_security_group.allow-all-ports.id]
    tags = {
        Name = "Internet"
    }
    ingress {
        from_port = "0"
        to_port = "0"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
  
}