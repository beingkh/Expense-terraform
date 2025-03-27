
resource "aws_security_group" "allow all traffic" {
  name = "allow_all_traffic"
  description = "Allow all inbound and outbound traffic"

    ingress = {
        from_port = var.from_port
        to_port = var.to_port
        protocol = "tcp"
        cidr_blocks = ["0,0,0,0/0"]
    }
    egress = {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0,0,0,0/0"]
    }
  tags ={
    Name = "allow_all_traffic"
  }
}