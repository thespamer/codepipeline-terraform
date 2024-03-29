provider "aws" {
  profile = "default"
  region  = "eu-west-1"
}

resource "aws_instance" "asdojl" {
  ami           = "ami-02df9ea15c1778c9c"
  instance_type = "t1.micro"
  key_name = "ir1"

  tags = {
    Name = "asdojl2"
  }
}

//resource "aws_eip" "asdojl" {
//  vpc      = true
//  instance = aws_instance.asdojl.id
//}

resource "aws_s3_bucket" "asdojl" {
  bucket = "tfasdojl"
  acl    = "private"
}
