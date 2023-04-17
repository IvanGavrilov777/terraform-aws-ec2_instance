data "aws_ami" "ubuntu" {
  most_recent = true
  
  filter {
    name   = "name"
    value = "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"
  }
}

resource "aws_instance" "VM" {
  instance_type = "t2.micro"
  ami = data.aws_ami.ubuntu.id
}
