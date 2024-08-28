provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "default"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

provider "aws" {
}

provider "acme" {
  server_url = "https://acme-v02.api.letsencrypt.org/directory"
}

terraform {
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "2.15.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.32.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "4.62.0"
    }
    acme = {
      source = "vancluever/acme"
    }
  }
}