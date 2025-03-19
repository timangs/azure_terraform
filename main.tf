terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id # 실제 subscription ID로 변경
}


# # 네트워크 인터페이스 생성
# resource "azurerm_network_interface" "example" {
#   name                = "vm-test-nic"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = azurerm_subnet.example.id
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id          = azurerm_public_ip.example.id # (선택 사항) 공용 IP 주소 연결
#   }
# }

# # Linux VM 생성
# resource "azurerm_linux_virtual_machine" "example" {
#   name                = "VM_test01"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   size                = "Standard_B2as_v2" # VM 크기
#   admin_username      = "timangs"
#   network_interface_ids = [
#     azurerm_network_interface.example.id,
#   ]

#   # SSH 키 인증
#   admin_ssh_key {
#     username   = "timangs"
#     public_key = file("~/.ssh/id_rsa.pub")  # 실제 SSH 공개 키 파일 경로로 변경!
#   }

#   os_disk {
#     caching              = "ReadWrite"
#     storage_account_type = "Standard_LRS" # Standard_LRS, Premium_LRS, StandardSSD_LRS 등
#   }

#   # Ubuntu Server 20.04 LTS 이미지 사용 (예시)
#   source_image_reference {
#     publisher = "Canonical"
#     offer     = "0001-com-ubuntu-server-focal"
#     sku       = "20_04-lts-gen2"
#     version   = "latest"
#   }

#   # (선택 사항) User Data 스크립트 (VM 최초 부팅 시 실행)
#   # user_data = filebase64("userdata.sh")

#     # (선택 사항) Custom Data
#   #  custom_data = base64encode("your custom data")
# }


# # (선택 사항) VM의 공용 IP 주소 출력
# output "public_ip" {
#   value = azurerm_public_ip.example.ip_address
# }