output "key-path" {
  description = "The path to the key in ssm"
  value       = var.ssmpath
}

output "keys" {
  description = "The name of the key"
  value       = "${aws_key_pair.ssh[*].key_name}"
}

output "private_key_pem" {
  description = "The private key data in PEM format."
  value       = tls_private_key.ssh[*].private_key_pem
}

output "public_key_pem" {
  description = "The public key data in PEM format."
  value       = tls_private_key.ssh[*].public_key_pem
}

output "public_key_openssh" {
  description = "The public key data in OpenSSH authorized_keys format"
  value       = tls_private_key.ssh[*].public_key_openssh

}

output "public_key_fingerprint_md5" {
  description = "The md5 hash of the public key data in OpenSSH MD5 hash format"
  value       = tls_private_key.ssh[*].public_key_fingerprint_md5
}
