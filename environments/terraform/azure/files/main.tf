terraform {
  required_version = ">= 1.2.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.4.0"
    }

    null = {
      source  = "hashicorp/null"
      version = "=3.2.1"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.49.0"
    }
  }
}
