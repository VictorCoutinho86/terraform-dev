terraform {
  required_providers {

    kind = {
      source  = "tehcyx/kind"
      version = "0.5.1"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "2.13.0"
    }

    null = {
      source  = "hashicorp/null"
      version = "3.2.2"
    }


  }

  required_version = ">= 1.5.0"
}

provider "kind" {
}

provider "helm" {
  kubernetes {
    config_path = pathexpand("~/.kube/config")
  }
}
