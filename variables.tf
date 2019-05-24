variable "key_names" {
  type = "list"
}

variable "common_tags" {
  type = "map"
}

variable "ssmpath" {
  type        = "string"
  description = "Where in SSM parameter to store this"
}

variable "region" {
  default = "eu-west-1"
}
