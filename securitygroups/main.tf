
resource "aws_security_group" "allow_web" {
  name        = "${var.sg_name}"
  description = "Allow www inbound traffic"
}

resource "aws_security_group_rule" "allow_http" {
  type              = "ingress"
  security_group_id = "${aws_security_group.allow_web.id}"

  from_port   = 80
  to_port     = 80
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "allow_8080" {
  type              = "ingress"
  security_group_id = "${aws_security_group.allow_web.id}"

  from_port   = 8080
  to_port     = 8080
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "allow_https" {
  type              = "ingress"
  security_group_id = "${aws_security_group.allow_web.id}"

  from_port   = 443
  to_port     = 443
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "allow_ssl" {
  type              = "ingress"
  security_group_id = "${aws_security_group.allow_web.id}"

  from_port   = 22
  to_port     = 22
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "allow_all" {
  type              = "egress"
  security_group_id = "${aws_security_group.allow_web.id}"

  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
}
