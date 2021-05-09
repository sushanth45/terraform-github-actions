terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    random = {
      source = "hashicorp/random"
    }
  }

  backend "remote" {
    organization = "sbk"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}
