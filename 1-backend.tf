# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "lizzostate"
    prefix = "terraform/state"
    credentials = "brazilandchewbacca-97fb936492d3.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
