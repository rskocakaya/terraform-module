resource "azurerm_virtual_network" "pro" {
  name                = "pro-network"  # Make sure this matches your reference in the subnet
  location            = azurerm_resource_group.rg01.location
  resource_group_name = azurerm_resource_group.rg01.name

  address_space       = ["10.0.0.0/16"]  # Adjust the address space as needed
}

# Resource for creating the subnet
resource "azurerm_subnet" "pro" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.rg01.name
  virtual_network_name = var.vnet_name
  address_prefixes     = [var.subnet_CIDR]
  depends_on = [azurerm_virtual_network.pro]  # Add this line
}


resource "azurerm_resource_group" "rg01" {
  name     = var.rg_name  
  location = "East US"    
}
