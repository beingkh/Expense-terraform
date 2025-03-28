resource "aws_security_group" "allowtraffic" {
  name = "allowtraffic"
  description = "allow all traffic"

  ingress  {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress  {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
    tags = var.sgtags
}

resource "aws_instance" "expense"{
    count = 3
    ami             = data.aws_ami.joindevops.id
    instance_type   = var.instance_type
    vpc_security_group_ids = [aws_security_group.allowtraffic.id]
    tags = merge(var.common_tags,{
        Name = var.instances[count.index]
    })
}