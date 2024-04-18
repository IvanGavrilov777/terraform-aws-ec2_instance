#
output "VM_public_IP" {
value = aws_instance.VM.public_ip
}

output "instance_id" {
value = aws_instance.VM.id
}

#sad
