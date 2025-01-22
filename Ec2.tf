provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}
resource "aws_instance" "web_instance" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = "t2.nano"
  key_name      = "server"

  tags = {
    "Name" : "tf-server"
  }
}
