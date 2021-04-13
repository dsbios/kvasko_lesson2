resource "aws_ebs_volume" "ebs-test" {
  availability_zone = "eu-central-1a"
  size = 10
  tags = {
    Name = "ebs-volume"
  }
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id = aws_ebs_volume.ebs-test.id
  instance_id = aws_instance.redhat.id
}