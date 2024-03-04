resource "random_string" "this" {
  length  = var.random_string_length
  special = false
  upper   = false
}

resource "azurerm_container_registry" "this" {
  name                = "${var.name_prefix}${random_string.this.result}"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  admin_enabled       = var.admin_enabled
  tags                = var.tags
}

resource "random_string" "diagnostic" {
  length  = var.random_string_length
  special = false
  upper   = false
}test1
test build
test docs
test perf
test refactor
test feat
test ci
test fix
test build
test docs
test perf
test refactor
test feat
test ci
test fix
test build
test docs
test perf
test refactor
test feat
test ci
test fix
test build
test docs
test perf
test refactor
test feat
test ci
test fix
test build
test docs
test perf
test refactor
test feat
test ci
test fix
test build
test docs
test perf
test refactor
test feat
test ci
test fix
test build
test docs
test perf
test refactor
test feat
test ci
test fix
test build
test docs
test perf
test refactor
test feat
test ci
test fix
test build
test docs
test perf
test refactor
test feat
test ci
test fix
test build
test docs
test perf
test refactor
test feat
test ci
test fix
test build
test docs
test perf
test refactor
test feat
test ci
test fix
test build
test docs
test perf
test refactor
test feat
test ci
test fix
test build
test docs
test perf
