terraform {
  required_providers {
    aws = {
      version = "3.8.0"
      source  = "hashicorp/aws"
    }
    tls = {
      version = "2.0"
    }
  }
}
