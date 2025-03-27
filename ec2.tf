resource "aws_security_group" "allowtraffic" {
  name = allowtraffic
  description = "allow all traffic"

  ingress = {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress = {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    name = "allowtraffic"
    purpose = "allowing all traffic"
  }
}