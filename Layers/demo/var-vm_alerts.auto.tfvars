subscriptionId = "9e9d8a58-6c9b-4cdb-8a7b-6450e36a6f51"
tenantId = "72f988bf-86f1-41af-91ab-2d7cd011db47"

resource_group_name = "jstart-vm-demo-08052020"

vm_disktransfers_disk_alert = {
    vmdisktransfersdisk = {
        scope               = "/subscriptions/9e9d8a58-6c9b-4cdb-8a7b-6450e36a6f51/resourcegroups/jstart-vm-demo-08052020/providers/microsoft.operationalinsights/workspaces/jstartvmdemo08052020law"
        actionGroupId       = "/subscriptions/9e9d8a58-6c9b-4cdb-8a7b-6450e36a6f51/resourceGroups/jstart-vm-demo-08052020/providers/microsoft.insights/actiongroups/ag"
        threshold           = 100
    }
}

vm_linux_availablememory_memory_alert = {
    vmlam = {
        scope               = "/subscriptions/9e9d8a58-6c9b-4cdb-8a7b-6450e36a6f51/resourcegroups/jstart-vm-demo-08052020/providers/microsoft.operationalinsights/workspaces/jstartvmdemo08052020law"
        actionGroupId       = "/subscriptions/9e9d8a58-6c9b-4cdb-8a7b-6450e36a6f51/resourceGroups/jstart-vm-demo-08052020/providers/microsoft.insights/actiongroups/ag"
        threshold           = 1
    }
}

vm_linux_percentused_disk_alert = {
    vmlinuxpercentusedspacedisk = {
        scope               = "/subscriptions/9e9d8a58-6c9b-4cdb-8a7b-6450e36a6f51/resourcegroups/jstart-vm-demo-08052020/providers/microsoft.operationalinsights/workspaces/jstartvmdemo08052020law"
        actionGroupId       = "/subscriptions/9e9d8a58-6c9b-4cdb-8a7b-6450e36a6f51/resourceGroups/jstart-vm-demo-08052020/providers/microsoft.insights/actiongroups/ag"
        threshold           = 95
    }
}

vm_percentagelimit_cpu_alert = {
    vmplcpu = {
        scope               = "/subscriptions/9e9d8a58-6c9b-4cdb-8a7b-6450e36a6f51/resourcegroups/jstart-vm-demo-08052020/providers/microsoft.operationalinsights/workspaces/jstartvmdemo08052020law"
        actionGroupId       = "/subscriptions/9e9d8a58-6c9b-4cdb-8a7b-6450e36a6f51/resourceGroups/jstart-vm-demo-08052020/providers/microsoft.insights/actiongroups/ag"
        threshold           = 75
    }
}

vm_windows_availablememory_alert = {
    vmwam = {
        scope               = "/subscriptions/9e9d8a58-6c9b-4cdb-8a7b-6450e36a6f51/resourcegroups/jstart-vm-demo-08052020/providers/microsoft.operationalinsights/workspaces/jstartvmdemo08052020law"
        actionGroupId       = "/subscriptions/9e9d8a58-6c9b-4cdb-8a7b-6450e36a6f51/resourceGroups/jstart-vm-demo-08052020/providers/microsoft.insights/actiongroups/ag"
        threshold           = 512
    }
}

vm_windows_percentagefree_disk_alert = {
    vmwpfds = {
        scope               = "/subscriptions/9e9d8a58-6c9b-4cdb-8a7b-6450e36a6f51/resourcegroups/jstart-vm-demo-08052020/providers/microsoft.operationalinsights/workspaces/jstartvmdemo08052020law"
        actionGroupId       = "/subscriptions/9e9d8a58-6c9b-4cdb-8a7b-6450e36a6f51/resourceGroups/jstart-vm-demo-08052020/providers/microsoft.insights/actiongroups/ag"
        threshold           = 95
    }
}

vm_readwritebytespersec_network_alert = {
    vmrwbsa1 = {
        dataSourceId        = "/subscriptions/9e9d8a58-6c9b-4cdb-8a7b-6450e36a6f51/resourcegroups/jstart-vm-demo-08052020/providers/microsoft.operationalinsights/workspaces/jstartvmdemo08052020law"
        actionGroupId       = "/subscriptions/9e9d8a58-6c9b-4cdb-8a7b-6450e36a6f51/resourceGroups/jstart-vm-demo-08052020/providers/microsoft.insights/actiongroups/ag"
    }   
}