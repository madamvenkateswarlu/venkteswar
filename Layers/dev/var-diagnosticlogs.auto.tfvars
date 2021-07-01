enable_kv_logs_to_log_analytics = true
enable_kv_logs_to_storage       = true
kv_logs                         = null # List of log categories
kv_metrics                      = null # List of metric categories

enable_aks_logs_to_log_analytics = false
enable_aks_logs_to_storage       = false
aks_logs                         = null # List of log categories
aks_metrics                      = null # List of metric categories

enable_appgw_logs_to_log_analytics = true
enable_appgw_logs_to_storage       = true
appgw_logs                         = null # List of log categories
appgw_metrics                      = null # List of metric categories

enable_cosmosdb_logs_to_log_analytics = false
enable_cosmosdb_logs_to_storage       = false
cosmosdb_logs                         = null # List of log categories
cosmosdb_metrics                      = null # List of metric categories

enable_mysql_logs_to_log_analytics = true
enable_mysql_logs_to_storage       = true
mysql_logs                         = null # List of log categories
mysql_metrics                      = null # List of metric categories

enable_appservice_logs_to_log_analytics = false
enable_appservice_logs_to_storage       = false
appservice_logs                         = null # List of log categories
appservice_metrics                      = null # List of metric categories

enable_azsql_logs_to_log_analytics = true
enable_azsql_logs_to_storage       = true
azsql_logs                         = null # List of log categories
azsql_metrics                      = null # List of metric categories

enable_postgresql_logs_to_log_analytics = false
enable_postgresql_logs_to_storage       = false
postgresql_logs                         = null # List of log categories
postgresql_metrics                      = null # List of metric categories

diagnostics_storage_account_name = "[__storage_account_name__]"

# custom_diagnostic_settings = {
#   log1 = {
#     name           = "customkvlog"
#     resource_id    = "/subscriptions/[__subscription_id__]/resourceGroups/[__resource_group_name__]/providers/Microsoft.KeyVault/vaults/[__key_vault_name__]"
#     enabled        = true
#     retention_days = 0
#     logs           = null
#     metrics        = null
#   }
# }
