resource "aws_ssm_parameter" "pem-private" {
  # checkov:skip=CKV_AWS_337: module intentionally uses the default KMS key per README
  count = length(var.key_names)
  name  = "${var.ssmpath}/id_rsa.${var.key_names[count.index]}"
  type  = "SecureString"
  value = element(tls_private_key.ssh.*.private_key_pem, count.index)
  tags  = var.common_tags
}

resource "aws_ssm_parameter" "ssh-public" {
  # checkov:skip=CKV_AWS_337: module intentionally uses the default KMS key per README
  count = length(var.key_names)
  name  = "${var.ssmpath}/id_rsa.${var.key_names[count.index]}.pub"
  type  = "SecureString"
  value = element(tls_private_key.ssh.*.public_key_openssh, count.index)
  tags  = var.common_tags
}
