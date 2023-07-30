

resource "azurerm_storage_account" "franco_adf_test" {
  name                = "francoadftest"
  resource_group_name = azurerm_resource_group.adftest.name

  account_kind             = "StorageV2"
  location                 = var.az_location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = merge(
    var.my_tags,
    {
      use_case = "adf_test"
      service  = "storage_account"
    }
  )
}



output "storage" {
  value = azurerm_storage_account.franco_adf_test.name
}
