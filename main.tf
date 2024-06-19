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
  
}
resource "azurerm_resource_group" "main" {
    name = "main"
    location = "east us"
}
resource "azurerm_service_plan" "appplan" {
  name                = "appplan"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  os_type             = "Linux"
  sku_name            = "S1"
}
