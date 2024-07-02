terraform {
  required_providers {
    doppler = {
      source  = "dopplerhq/doppler"
      version = "1.3.0"
    }
  }
}

provider "doppler" {
  doppler_token = var.doppler_token
}

resource "doppler_config" "this" {
  project     = var.project
  environment = var.environment
  name        = "${var.environment}_${var.slug}"
}

data "doppler_secrets" "this" {
  config = doppler_config.this.id
  project = var.project
}
output "all_secrets" {
  value = data.doppler_secrets.this.map
}