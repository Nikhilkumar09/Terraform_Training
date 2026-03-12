

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}




variable "environment" {
  default = "development"
}

resource "aws_instance" "nikhil" {
    ami = "ami-076c6dbba59aa92e6"
    instance_type = var.environment == "development" ? "t2.micro" : "error"
    key_name      = "TEST_EC2_INST_2_KEY" 
    vpc_security_group_ids = [aws_security_group.allow_tls.id]

    tags = {
    Name = "TEST_EC2_INST_nikhil"
    }
}

resource "aws_instance" "myec2" {
    ami = "ami-076c6dbba59aa92e6"
    instance_type = "t2.micro"
    key_name      = "TEST_EC2_INST_2_KEY"           # Replace with your actual key pair name


tags = {
    Name = "TEST_EC2_INST"
}

}
 /*new commit for test*/

