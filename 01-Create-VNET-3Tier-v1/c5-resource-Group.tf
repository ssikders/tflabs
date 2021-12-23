# Resource-1: Azure Resource Group
resource "azurerm_resource_group" "myrg" {
  # name = "${local.resource_name_prefix}-${var.resource_group_name}"
  # if you do not want randon Resource Group Name then remove following line with # sign
  name = "${local.resource_name_prefix}-${var.resource_group_name}-${random_string.myrandom.id}"
  location = var.resource_group_location
  tags = local.common_tags
}

# Above will create Resource Group Name "HR-Dev-myrg-bwnugb" 