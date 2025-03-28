variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "this is RHEL AMI ID"
}
variable "instance_type" {
    type = string
    default = "t3.micro"
}
variable "ec2_tags" {
    default = {
        Project = "Expense-project"
        component = "Backend"
        Environment = "Dev"
        Name = "expense-backend-dev"
    }
}

variable "from_port" {
    type = number
    default = 22
}

variable "to_port" {
    type = number
    default = 22
}
variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "sgtags" {
    type = map
    default = {
        name = "allowtraffic"
        purpose = "allowing all traffic"
    }
}
variable "instances" {
  default = ["frontend", "backend", "mysql"]
}

variable "zone_id" {
    default = "Z086126133T534ZU41SB5"
}
variable "domain_name" {
    default = "siliconapps.in"
}

variable "common_tags" {
    type = map(string)
    default = {
        Project = "Expense-project"
        Environment = "Dev"
    }
}