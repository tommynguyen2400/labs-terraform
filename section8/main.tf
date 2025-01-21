resource "aws_instance" "server-linux" {
  ami           = "ami-0bd55ebedabddc3c0"
  instance_type = "t2.micro"
  tags = {
    Name = "server-linux"
  }
}