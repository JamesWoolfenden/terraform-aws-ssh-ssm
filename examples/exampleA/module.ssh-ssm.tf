module "ssh-ssm" {
  #source                  = "JamesWoolfenden/ssh-ssm/aws"
  source      = "../../"
  version     = "0.0.1"
  ssmpath     = "${var.ssmpath}"
  key_names   = "${var.key_names}"
  common_tags = "${var.common_tags}"
}
