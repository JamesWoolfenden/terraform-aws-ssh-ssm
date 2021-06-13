output "key-path" {
  value = var.ssmpath
}

output "keys" {
  description = "The key names"
  value       = module.ssh-ssm.keys
}

output "private_key_pem" {
  description = "The private key data in PEM format."
  value       = module.ssh-ssm.private_key_pem
  sensitive   = true
}

output "public_key_pem" {
  description = "The public key data in pem format"
  value       = module.ssh-ssm.public_key_pem
  sensitive   = true
}

output "public_key_openssh" {
  description = "The public key data in OpenSSH authorized_keys format"
  value       = module.ssh-ssm.public_key_openssh

}

output "public_key_fingerprint_md5" {
  description = "The md5 hash of the public key data in OpenSSH MD5 hash format"
  value       = module.ssh-ssm.public_key_fingerprint_md5
}
