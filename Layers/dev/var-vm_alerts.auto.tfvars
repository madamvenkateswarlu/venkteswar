subscriptionId = "[__subscription_id__]"
tenantId       = "[__tenant_id__]"

resource_group_name = "[__resource_group_name__]"

vm_disktransfers_disk_alert = {
  vmdisktransfersdisk = {
    scope         = "/subscriptions/[__subscription_id__]/resourcegroups/[__resource_group_name__]/providers/microsoft.operationalinsights/workspaces/[__log_analytics_name__]"
    actionGroupId = "/subscriptions/[__subscription_id__]/resourceGroups/[__resource_group_name__]/providers/microsoft.insights/actiongroups/ag03052021"
    threshold     = 100
  }
}

vm_linux_availablememory_memory_alert = {
  vmlam = {
    scope         = "/subscriptions/[__subscription_id__]/resourcegroups/[__resource_group_name__]/providers/microsoft.operationalinsights/workspaces/[__log_analytics_name__]"
    actionGroupId = "/subscriptions/[__subscription_id__]/resourceGroups/[__resource_group_name__]/providers/microsoft.insights/actiongroups/ag03052021"
    threshold     = 1
  }
}

vm_linux_percentused_disk_alert = {
  vmlinuxpercentusedspacedisk = {
    scope         = "/subscriptions/[__subscription_id__]/resourcegroups/[__resource_group_name__]/providers/microsoft.operationalinsights/workspaces/[__log_analytics_name__]"
    actionGroupId = "/subscriptions/[__subscription_id__]/resourceGroups/[__resource_group_name__]/providers/microsoft.insights/actiongroups/ag03052021"
    threshold     = 95
  }
}

vm_percentagelimit_cpu_alert = {
  vmplcpu = {
    scope         = "/subscriptions/[__subscription_id__]/resourcegroups/[__resource_group_name__]/providers/microsoft.operationalinsights/workspaces/[__log_analytics_name__]"
    actionGroupId = "/subscriptions/[__subscription_id__]/resourceGroups/[__resource_group_name__]/providers/microsoft.insights/actiongroups/ag03052021"
    threshold     = 75
  }
}

vm_windows_availablememory_alert = {
  vmwam = {
    scope         = "/subscriptions/[__subscription_id__]/resourcegroups/[__resource_group_name__]/providers/microsoft.operationalinsights/workspaces/[__log_analytics_name__]"
    actionGroupId = "/subscriptions/[__subscription_id__]/resourceGroups/[__resource_group_name__]/providers/microsoft.insights/actiongroups/ag03052021"
    threshold     = 512
  }
}

vm_windows_percentagefree_disk_alert = {
  vmwpfds = {
    scope         = "/subscriptions/[__subscription_id__]/resourcegroups/[__resource_group_name__]/providers/microsoft.operationalinsights/workspaces/[__log_analytics_name__]"
    actionGroupId = "/subscriptions/[__subscription_id__]/resourceGroups/[__resource_group_name__]/providers/microsoft.insights/actiongroups/ag03052021"
    threshold     = 95
  }
}

vm_readwritebytespersec_network_alert = {
  vmrwbsa1 = {
    dataSourceId  = "/subscriptions/[__subscription_id__]/resourcegroups/[__resource_group_name__]/providers/microsoft.operationalinsights/workspaces/[__log_analytics_name__]"
    actionGroupId = "/subscriptions/[__subscription_id__]/resourceGroups/[__resource_group_name__]/providers/microsoft.insights/actiongroups/ag03052021"
  }
}