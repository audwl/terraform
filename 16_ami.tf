resource "aws_ami_from_instance" "mjkim_ami" {
    name = "mjkim-ami"
    source_instance_id = aws_instance.mjkim_weba.id
}