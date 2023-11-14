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
resource "azurerm_log_analytics_workspace" "example" {
  name                = var.log
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}
resource "azurerm_container_app_environment" "example" {
  name                       = var.env
  location                   = azurerm_resource_group.example.location
  resource_group_name        = azurerm_resource_group.example.name
  log_analytics_workspace_id = azurerm_log_analytics_workspace.example.id
  infrastructure_subnet_id   = azurerm_subnet.example.id
}




# Container apps add all files
