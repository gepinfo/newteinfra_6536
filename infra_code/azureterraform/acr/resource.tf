provider "azurerm" {
  features {}

  subscription_id   = var.subscription_id
  tenant_id         = var.tenant_id
  client_id         = var.client_id
  client_secret     = var.client_secret
}
resource "azurerm_resource_group" "example" {
  name     = var.resource
  location = var.location
}

resource "azurerm_container_registry" "acr" {
  name                = var.cr
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku                 = "Basic"
  admin_enabled       = true
  #provisioner "local-exec" {
   # command = [
   #   
   # ]
   # environment = {
   #   REGISTRY_NAME = var.cr
   #   
   # }
  # }
}
