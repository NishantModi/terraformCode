# Reference: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance

resource "aws_instance" "myfirstEC2" {
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  count         = var.ec2_count
  tags          = var.ec2_tags
  vpc_security_group_ids = [ "${aws_security_group.sg_01.id}" ]
  subnet_id = "${aws_subnet.subnet_public_external.id}"
}
