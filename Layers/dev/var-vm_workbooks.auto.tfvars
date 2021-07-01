subscriptionId = "[__subscription_id__]"
tenantId       = "[__tenant_id__]"

resource_group_name = "[__resource_group_name__]"

vm_performanceanalysis_monitoring_workbooks = {
  vmwbperfanalysis = {
    workbookDisplayName = "vmpawb1"
    workbookName        = "VM-PA-Workbook1"
    workbookSourceId    = "/subscriptions/[__subscription_id__]/resourcegroups/[__resource_group_name__]/providers/microsoft.operationalinsights/workspaces/[__log_analytics_name__]"
  }
}

vm_performancegraph_monitoring_workbooks = {
  vmwbperfgraph = {
    workbookDisplayName = "vmpgwb1"
    workbookName        = "VM-PG-Workbook1"
    workbookSourceId    = "/subscriptions/[__subscription_id__]/resourcegroups/[__resource_group_name__]/providers/microsoft.operationalinsights/workspaces/[__log_analytics_name__]"
  }
}

vm_vmssoperational_overview = {
  vmssoperationswb = {
    workbookDisplayName = "vmvowb1"
    workbookName        = "VM-Operation-Workbook1"
    workbookSourceId    = "/subscriptions/[__subscription_id__]/resourcegroups/[__resource_group_name__]/providers/microsoft.operationalinsights/workspaces/[__log_analytics_name__]"
  }
}