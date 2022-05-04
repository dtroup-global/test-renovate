terraform {
  backend "s3" {
    bucket         = "global-shared-test-renovate-testing-tfstate"
    key            = "inventory.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.5.0"
    }

    null = {
      source  = "hashicorp/null"
      version = "3.1.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.8.0"
    }

    archive = {
      source  = "hashicorp/archive"
      version = "3.0.0"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "3.1.0"
    }

    dns = {
      source  = "hashicorp/dns"
      version = "3.2.1"
    }

    time = {
      source  = "hashicorp/time"
      version = "0.7.2"
    }
    
    artifactory = {
      source = "jfrog/artifactory"
      version = "6.6.0"
    }
    
    aquasec = {
      source = "aquasecurity/aquasec"
      version = "0.1.1"
    }
    
  }
}
