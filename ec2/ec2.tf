
resource "aws_instance" "web" {
  ami           = "ami-ae6272b8"
  instance_type = "t2.micro"
  key_name =aws_key_pair.deployer.key_name
  user_data  = file("userdata.sh")

  tags = {
    Name = "HelloWorld"
  }
}