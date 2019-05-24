provider "aws" {
  version = "~> 2.11"
  region  = var.region
}

provider "tls" {
  version = "~> 2.0"
}
