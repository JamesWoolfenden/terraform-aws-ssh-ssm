variable "key_names" {
  type        = list(any)
  description = "A list of key names"
}

variable "common_tags" {
  type        = map(any)
  description = "Implements the common tags scheme"
}

variable "ssmpath" {
  type        = string
  description = "Where in SSM parameter to store this"
}
