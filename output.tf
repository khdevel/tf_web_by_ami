output "public_ip" {
  value = "${module.webhost.public_ip}"
}

output "foo" {
  value = "${module.securitygroups.security_group_id}"
}
