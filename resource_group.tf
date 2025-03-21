# 리소스 그룹 생성
resource "azurerm_resource_group" "korea_rg" {
  name     = "vm-test-rg"  
  location = "koreacentral" 
}
