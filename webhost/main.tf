resource "aws_instance" "web" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name      = "${var.key_name}"
  user_data     = "${file("files/bootstrap.sh")}"

  vpc_security_group_ids = [
    "${aws_security_group.allow_web.id}",
  ]

  tags {
    Name  = "myWebHost"
  }
}
