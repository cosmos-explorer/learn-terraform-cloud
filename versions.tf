/*
terraform {
    
    cloud {
        organization = "tuto-jj"

        workspaces {
            name = "learn-terraform-cloud"
        }
    }
    
    required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "~> 3.28.0"
      }
    }

    required_version = ">= 1.1.0"
}
*/
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.28.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
  }
  required_version = ">= 1.1.0"

  cloud {
    organization = "featureflags"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}