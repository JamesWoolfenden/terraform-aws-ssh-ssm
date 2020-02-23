module "ssh-ssm" {
  source      = "../../"
  ssmpath     = var.ssmpath
  key_names   = var.key_names
  common_tags = var.common_tags
}
