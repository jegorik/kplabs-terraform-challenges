terraform {
 required_version = "1.11.2"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.91.0"
    }

    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.49.1"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

provider "digitalocean" {}