module "pre-prod" {
  source   = "/home/terraform"
  location = "Central Australia"
  sku_tier = "Premium"
  sku_size = "s2"
}
