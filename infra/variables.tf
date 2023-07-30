variable "my_tags" {
  type = map(any)
  default = {
    terraform = "true"
    prod      = false
  }
}
variable "az_location" {
  type    = string
  default = "northeurope"
}

variable "azure_subscription_id" {
  type = string
  sensitive=true
}

variable "azure_subscription_tenant_id" {
  type = string
    sensitive=true
}

variable "service_principal_appid" {
  type = string
    sensitive=true
}

variable "service_principal_password" {
  type = string
    sensitive=true
}

variable "rds_password" {
  type      = string
  sensitive = true
    sensitive=true
}

variable "server_admin" {
  type = string
    sensitive=true

}
variable "admin_password" {
  type      = string
  sensitive = true
  default   = null
}

## virtual network
variable "prefix" {
  type        = string
  default     = "win-vm-iis"
  description = "Prefix of the resource name"
}
