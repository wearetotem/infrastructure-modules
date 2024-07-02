variable "environment" {
  description = "the doopler environment"
  type        = string
  default     = "dev"
}

variable "project" {
  type        = string
  default     = "global"
}


variable "slug" {
  description = "the doopler slug"
  type        = string
  default     = "doppler"
}

variable "doppler_token" {
  type = string
}