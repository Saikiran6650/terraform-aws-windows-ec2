output "ec2_public_ip" {
  description = "The public IP address of the Windows Server EC2 instance"
  value       = aws_instance.windows_server.public_ip
}