resource "azurerm_resource_group" "rg" {
  name     = "var.resource_group_name"
  location = "var.location"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "var.vnet"
  address_space       = "var.address"
  location            = "var.location"
  resource_group_name = "var.resource_group_name"
}  
resource "azurerm_subnet" "example" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.1.0/22"]
}
resource "azurerm_app_service_plan" "svcpln" {
  name                = "var.app_service_plan_name"
  location            = "var.location"
  resource_group_name = "var.resource_group_name"

  sku {
    tier = "var.sku_tier"
    size = "var.sku_size"
  }
}
identity {
    type = "SystemAssigned"
  }
resource "azurerm_app_service" "example" {
  name                = "app_plan"
  location            = "var.location"
  resource_group_name = "var.resource_group_name"
  app_service_plan_id = "azurerm_app_service_plan.svcpln.id"
}
