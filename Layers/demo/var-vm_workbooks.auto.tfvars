subscriptionId = "9e9d8a58-6c9b-4cdb-8a7b-6450e36a6f51"
tenantId = "72f988bf-86f1-41af-91ab-2d7cd011db47"

resource_group_name = "jstart-vm-demo-08052020"

vm_performanceanalysis_monitoring_workbooks = {
    vmwbperfanalysis = {
        workbookDisplayName         = "vmpawb"
        workbookName                = "VM-PA-Workbook"
        workbookSourceId            = "/subscriptions/9e9d8a58-6c9b-4cdb-8a7b-6450e36a6f51/resourcegroups/jstart-vm-demo-08052020/providers/microsoft.operationalinsights/workspaces/jstartvmdemo08052020law"
    }
}

vm_performancegraph_monitoring_workbooks = {
    vmwbperfgraph = {
        workbookDisplayName         = "vmpgwb"
        workbookName                = "VM-PG-Workbook"
        workbookSourceId            = "/subscriptions/9e9d8a58-6c9b-4cdb-8a7b-6450e36a6f51/resourcegroups/jstart-vm-demo-08052020/providers/microsoft.operationalinsights/workspaces/jstartvmdemo08052020law"
    }
}

vm_vmssoperational_overview = {
    vmssoperationswb = {
        workbookDisplayName         = "vmvowb"
        workbookName                = "VM-Operation-Workbook"
        workbookSourceId            = "/subscriptions/9e9d8a58-6c9b-4cdb-8a7b-6450e36a6f51/resourcegroups/jstart-vm-demo-08052020/providers/microsoft.operationalinsights/workspaces/jstartvmdemo08052020law"
    }
}