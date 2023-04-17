data "aws_ami" "ubuntu" {
  most_recent = true
  
  filter {
    name   = "Ubuntu Server 22.04 LTS (HVM), SSD Volume Type"
  }
}

resource "aws_instance" "VM" {
  instance_type = "t2.micro"
  ami = data.aws_ami.ubuntu.id
}
