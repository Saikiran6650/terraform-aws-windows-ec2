resource "aws_instance" "windows_server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id

  vpc_security_group_ids = [aws_security_group.windows_sg.id]  # ✅ Correct way

  tags = {
    Name = "Windows-Server"
  }
}