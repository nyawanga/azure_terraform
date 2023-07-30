# Create a resource group
resource "azurerm_resource_group" "adftest" {
  name     = "adftest_rg"
  location = var.az_location

  tags = merge(
    var.my_tags,
    {
      use_case = "adf_test"
      service  = "resource_group"
    }
  )
}

output "resource_group" {
  value = azurerm_resource_group.adftest.name
}
