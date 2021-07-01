resource_group_name = "jstart-vm-demo-08052020"

flow_logs = {
  flowlog1 = {
    nsg_name                 = "nsg1"
    storage_account_name     = "jstartvmdemo08052020sa"
    network_watcher_name     = "NetworkWatcher_eastus2"
    network_watcher_rg_name  = "NetworkWatcherRG"
    retention_days           = "7"
    enable_traffic_analytics = false
    interval_in_minutes      = null # required only while using traffic analytics is enabled
  }
}