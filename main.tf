resource "azurerm_resource_group" "rg" {
  name     = "var.resource_group_name"
  location = "var.location"
}
resource "azurerm_virtual_network" "vnet" {
  name                = "vnet1"
  address_space       = "var.address"
  location            = "var.location"
  resource_group_name = "var.resource_group_name"
}  
resource "azurerm_subnet" "example" {
  name                 = "sub1"
  resource_group_name  = "var.resource_group_name"
  virtual_network_name = "azurerm_virtual_network.vnet.name"
  address_prefixes     = "var.address_prefixes"
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
