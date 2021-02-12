variable "key_names" {
  type        = list(any)
  description = "List of names to create ssh keys for"
}

variable "ssmpath" {
  type        = string
  description = "Where in SSM parameter to store this"
}

variable "common_tags" {
  description = "Implements the commons tags scheme"
  type        = map(any)
}
