variable "common_tags" {
  default = {
    Project="roboshop"
    Environment="prod"
    Terraform="true"
  }
}

variable "sg_tags" {
  default = {}
}


variable "project_name" {
default = "roboshop"  
}


variable "environment" {
default = "prod"  
}


variable "mongodb_sg_ingress_rules" {
  
default = [
   {
    description      = "Allow all ports 80"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  },
  {
    description      = "Allow all ports 443"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }
]
}



