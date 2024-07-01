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
  project     = "global"
  environment = var.environment
  name        = "${var.environment}_${var.slug}"
}

data "doppler_secrets" "this" {
  config = doppler_config.this.id 
}
output "all_secrets" {
  value = data.doppler_secrets.this.map
}