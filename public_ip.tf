resource "azurerm_public_ip" "pip" {
  name                = "pip"
  resource_group_name = azurerm_resource_group.korea_rg.name
  location            = azurerm_resource_group.korea_rg.location
  allocation_method   = "Static"
  sku                 = "Standard"
}