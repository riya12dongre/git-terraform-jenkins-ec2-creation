provider "aws" {
    region = "ap-south-1"  
}

resource "aws_instance" "ec2-user" {
  ami           = "ami-0c768662cc797cd75" # us-west-2
  instance_type = "t2.micro"
  tags = {
      Name = "Terraform server 2"
  }
}
