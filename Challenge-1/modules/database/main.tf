resource "azurerm_sql_server" "azure-sql_server" {
    name = var.sql-server
    resource_group_name = var.resource_group
    location = var.location
    version = var.database_version
    administrator_login = var.database_admin
    administrator_login_password = var.database_password
}

resource "azurerm_sql_database" "azure-sql_db" {
  name                = var.sql_db
  resource_group_name = var.resource_group
  location            = var.location
  server_name         = azurerm_sql_server.azure-sql_server.name
}