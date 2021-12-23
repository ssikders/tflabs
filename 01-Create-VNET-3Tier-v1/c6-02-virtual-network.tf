# Create Virtual Network
resource "azurerm_virtual_network" "vnet" {
  name                = "${var.vnet_name}-${local.resource_name_prefix}"
  address_space       = var.vnet_address_space
  location            = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name
  tags = local.common_tags
}

## Above will create a VNET called "sap-dev-vent-default"