resource "random_string" "this" {
  length  = var.random_string_length
  special = false
  upper   = false
}

resource "azurerm_resource_group" "this" {
  name     = "rg-${var.name}-${random_string.this.result}"
  location = var.location
  tags     = var.tags
}

module "acr" {
  source = "../../acr"

  name_prefix         = "acr${var.name}"
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  sku                 = "Basic"
  tags                = var.tags
}