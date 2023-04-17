data "aws_ami" "ubuntu" {
  most_recent = true
}

resource "aws_instance" "VM" {
  instance_type = "t2.micro"
  ami = data.aws_ami.ubuntu.id
}
