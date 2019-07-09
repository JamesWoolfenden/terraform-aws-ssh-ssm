variable "key_names" {
  type        = list
  description = "A list of key names"
}

variable "common_tags" {
  type        = map
  description = "Implements the common tags scheme"
}

variable "ssmpath" {
  type        = string
  description = "Where in SSM parameter to store this"
}
