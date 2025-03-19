# 리소스 그룹 생성
resource "azurerm_resource_group" "korea_rg" {
  name     = "vm-test-rg"  # 원하는 리소스 그룹 이름으로 변경
  location = "koreacentral" # 한국 중부
}
