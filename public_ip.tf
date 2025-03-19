
# # 가상 네트워크 생성
# resource "azurerm_virtual_network" "vpc_0" {
#   name                = "vm-test-vnet"
#   address_space       = ["10.0.0.0/16"]
#   location            = azurerm_resource_group.korea_rg.location
#   resource_group_name = azurerm_resource_group.korea_rg.name
# }

# # 서브넷 생성
# resource "azurerm_subnet" "snt_1" {
#   name                 = "internal"
#   resource_group_name  = azurerm_resource_group.korea_rg.name
#   virtual_network_name = azurerm_virtual_network.vpc_0.name
#   address_prefixes     = ["10.0.1.0/24"]
# }
resource "azurerm_public_ip" "pip" {
  name                = "pip"
  resource_group_name = azurerm_resource_group.korea_rg.name
  location            = azurerm_resource_group.korea_rg.location
  allocation_method   = "Static"
  sku                 = "Standard"
}