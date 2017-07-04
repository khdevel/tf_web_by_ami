resource "null_resource" "cluster" {
  count = "${var.nodes_number}"

  connection {
    host = "${element(var.instance_ip_addresses, count.index)}"
    user = "ec2-user"
    private_key = "${file("${path.module}/files/id_rsa")}"
  }

  provisioner "remote-exec" {
    inline = [
      "echo 'kamil' > /tmp/test.txt",
    ]
  }
}
