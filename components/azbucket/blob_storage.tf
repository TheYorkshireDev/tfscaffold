# Create a resource group
resource "azurerm_resource_group" "test" {
  name     = "acctestRG-d"
  location = "${var.region}" #westus
}

resource "azurerm_storage_account" "test" {
  name                     = "acctestaccs"
  resource_group_name      = "${azurerm_resource_group.test.name}"
  location                 = "${var.region}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "test" {
  name                  = "${var.bucket_name}"
  resource_group_name   = "${azurerm_resource_group.test.name}"
  storage_account_name  = "${azurerm_storage_account.test.name}"
  container_access_type = "private"
}