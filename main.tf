provider "aws" {
    region = "ap-south-1"  
}

resource "aws_instance" "ubuntu" {
  ami           = "ami-03a933af70fa97ad2 " # us-west-2
  instance_type = "t2.micro"
  tags = {
      Name = "Terraform server 2"
  }
}
