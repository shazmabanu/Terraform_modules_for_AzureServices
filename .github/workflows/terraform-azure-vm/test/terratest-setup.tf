module "azure_vm" {
  source = "../.."
  resource_group_name    = "ShazmaBanu-RG"
  location               = "Central India"
  vnet_name              = "myVNet"
  vnet_address_space     = ["10.0.0.0/16"]
  subnet_name            = "mySubnet"
  subnet_address_prefix  = ["10.0.1.0/24"]
  nic_name               = "myNIC"
  nic_ip_configuration_name = "myIPConfig"
  vm_name                = "myVM"
  vm_size                = "Standard_B1s"
  #availability_set_id    = null
  os_type                = "Linux"  # or "Windows"
  storage_account_type   = "Standard_LRS"
  linux_publisher     = "Canonical"
  linux_offer         = "UbuntuServer"
  linux_sku           = "18.04-LTS"
  linux_version       = "18.04.202401161"
  windows_publisher   = "MicrosoftWindowsServer"
  windows_offer       = "WindowsServer"
  windows_sku         = "2016-Datacenter"
  windows_version     = "14393.6351.23"
  admin_username         = "adminuser"
  admin_password         = "adminpassword123!"
  tags                   = {
    Environment = "Dev"
  }
}
