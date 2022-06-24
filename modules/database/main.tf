resource "azurerm_sql_server" "sqlprimary" {
    name = var.primarydb
    resource_group_name = var.resource_group
    location = var.location
    version = var.primary_database_version
    administrator_login = var.primary_db_user
    administrator_login_password = var.primary_db_pass
}

resource "azurerm_sql_database" "db-main" {
  name                = "sql-database1"
  resource_group_name = var.resource_group
  location            = var.location
  server_name         = azurerm_sql_server.sqlprimary.name
}
