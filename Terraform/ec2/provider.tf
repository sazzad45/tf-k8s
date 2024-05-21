terraform {
  required_version = ">=1.3.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.55.0"
    }
    archive = {
      source = "hashicorp/archive"
    }
    local = {
      source = "hashicorp/local"
    }
    null = {
      source = "hashicorp/null"
    }
    template = {
      source = "hashicorp/template"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}
provider "archive" {
}
provider "local" {
}
provider "null" {
}
