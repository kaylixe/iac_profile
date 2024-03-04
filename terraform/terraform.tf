terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.25.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.1"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.2"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.23.0"
    }
  }
  # setup backend
  backend "s3" {
    bucket = "vprofile86"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }

  required_version = ">= 0.12.29"
  #required_version = "~> 1.6.3"

}
##
##
####
