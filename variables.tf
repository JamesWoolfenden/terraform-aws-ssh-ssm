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

# this is enables you to add dependancies
variable depends_on {
  default     = []
  description = "This is a way to make a module depends on, which isnt built in."
  type        = "list"
}
