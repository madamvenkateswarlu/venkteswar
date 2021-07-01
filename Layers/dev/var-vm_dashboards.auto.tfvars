subscriptionId = "[__subscription_id__]"
tenantId       = "[__tenant_id__]"

resource_group_name = "[__resource_group_name__]"

vm_dashboards = {
  vmdash1 = {
    dashboardName     = "VM-Dashboard"
    resourceGroupName = "[__resource_group_name__]"
    resourceName      = "[__log_analytics_name__]"
    resourceId        = "/subscriptions/[__subscription_id__]/resourcegroups/[__resource_group_name__]/providers/microsoft.operationalinsights/workspaces/[__log_analytics_name__]"
  }
}
