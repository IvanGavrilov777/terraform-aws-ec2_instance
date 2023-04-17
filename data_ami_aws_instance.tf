data "aws_ami" "ubuntu" {
    filters = {
      architecture        = "x86_64"
      name                = "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"
      root-device-type    = "ebs"
      virtualization-type = "hvm"
    }
    most_recent = true
    owners      = ["099720109477"]
  }

resource "aws_instance" "VM" {
  instance_type = "t2.micro"
  ami = data.aws_ami.ubuntu.id
}
