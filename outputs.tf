output "key-path" {
  value = "${var.ssmpath}"
}

output "keys" {
  value = ["${aws_key_pair.ssh.*.key_name}"]
}
