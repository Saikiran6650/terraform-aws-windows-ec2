resource "aws_ebs_volume" "ebs_volume" {
  availability_zone = aws_instance.windows_server.availability_zone
  size             = 30  # Adjust size as needed
  encrypted        = true

  tags = {
    Name = "Windows-Server-Volume"
  }
}

resource "aws_volume_attachment" "ebs_attach" {
  device_name = "/dev/sdf"
  volume_id   = aws_ebs_volume.ebs_volume.id
  instance_id = aws_instance.windows_server.id
}