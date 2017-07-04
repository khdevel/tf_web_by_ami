resource "aws_instance" "web" {
  ami           = "${var.ami}"
  count         = "${var.nodes_number}"
  instance_type = "${var.instance_type}"
  key_name      = "${var.key_name}"

  vpc_security_group_ids = [
    "${var.sg}",
  ]

  tags {
    Name  = "myWebHost"
  }
}
