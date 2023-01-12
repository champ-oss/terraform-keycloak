variable "keycloak_client_secret" {
  description = "https://registry.terraform.io/providers/mrparkers/keycloak/latest/docs#username"
  default     = ""
  type        = string
}

variable "keycloak_url" {
  description = "https://registry.terraform.io/providers/mrparkers/keycloak/latest/docs#username"
  default     = ""
  type        = string
}

variable "keycloak_client_id" {
  description = "https://registry.terraform.io/providers/mrparkers/keycloak/latest/docs#client_id"
  default     = "terraform-client"
  type        = string
}
