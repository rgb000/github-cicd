variable "name_prefix" {
  type        = string
  description = "Prefix for random generated name."
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "random_string_length" {
  type        = number
  description = "Random string length used in resource name"
  default     = 5
}

variable "admin_enabled" {
  type        = bool
  description = "Enabled Admin user"
  default     = false
}

variable "sku" {
  type        = string
  description = "Pricing plan"
  validation {
    condition     = contains(["Basic", "Standard", "Premium"], var.sku)
    error_message = "SKU for ACR should be one of: Basic, Standard or Premium."
  }
}

variable "tags" {
  type        = map(string)
  description = "Resource tags"
}
