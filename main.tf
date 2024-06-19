terraform {
  required_providers {
    azurerm ={
        source = "hashicorp/azurerm"
        version = "3.106.0"
    }
  }
}
provider "azurerm" {
    features {}
    subscription_id = 
    client_id = 
    tenant_id = 
  
}
resource "azurerm_resource_group" "main" {
    name = "main"
    location = "east us"
}
resource "azurerm_service_plan" "mainsvc" {
    name = "mainsvc"
    resource_group_name = azurerm_resource_group.main.name
    location = azurerm_resource_group.main.location
    os_type = "Linux"
    sku_name = "S1"
}