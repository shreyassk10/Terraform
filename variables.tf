variable "resource_group_name" {
  description = "rg1"
}

variable "location" {
  description = "East US"
}

variable "address_space" {
  description = ["10.0.0.0/16"]
}

variable "address_prefixes" {
  description = ["10.0.0.0/22"]
}

variable "app_service_plan_name" {
  description = "test_01"
}

variable "sku_tier" {
  description = "Standard"
}

variable "sku_size" {
  description = "S1"
}
