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
resource "azurerm_resource_group" "aaaaa" {
    name = "aaaaa"
    location = "east us"
}
resource "azurerm_resource_group" "DHONI1929" {
    name = "DHONI1929"
    location = "east us"
}