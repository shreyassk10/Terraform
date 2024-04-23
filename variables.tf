variable "resource_group_name" {
  type = string
  description = "rg1"
}

variable "location" {
  type = string
  description = "East US"
}

variable "address_space" {
  type = string
  description = ["10.0.0.0/16"]
}

variable "address_prefixes" {
  type = string
  description = ["10.0.0.0/22"]
}

variable "app_service_plan_name" {
  type = string
  description = "test_01"
}

variable "sku_tier" {
  type = string
  description = "Standard"
}

variable "sku_size" {
  description = "S1"
}
