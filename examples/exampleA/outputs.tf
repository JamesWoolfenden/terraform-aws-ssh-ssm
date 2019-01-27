output "key-path" {
  value = "${var.ssmpath}"
}

output "keys" {
  value = ["${module.ssh-ssm.keys}"]
}
