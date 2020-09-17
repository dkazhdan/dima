/*******************************************************************************
  Define Terraform Remote State File and Google Providers

*******************************************************************************/
terraform {
  backend "gcs" {
    bucket = "terraform-kong-services"
    prefix = "state-services"
  }
}

provider "google-beta" {
  version = "~> 3.3"
}

provider "google" {
  version = "~> 3.3"
}
