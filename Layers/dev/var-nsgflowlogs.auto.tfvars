resource_group_name = "[__resource_group_name__]"

flow_logs = {
  flowlog1 = {
    nsg_name                 = "nsg1"
    storage_account_name     = "[__storage_account_name__]"
    network_watcher_name     = "NetworkWatcher_eastus2"
    network_watcher_rg_name  = "NetworkWatcherRG"
    retention_days           = "7"
    enable_traffic_analytics = false
    interval_in_minutes      = null # required only while using traffic analytics is enabled
  }
}

loganalytics_workspace_name = "[__log_analytics_name__]"