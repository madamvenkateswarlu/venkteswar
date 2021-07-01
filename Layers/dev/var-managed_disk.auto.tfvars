resource_group_name = "[__resource_group_name__]"

managed_data_disks = {
  "disk1" = {
    disk_name                   = "diskvm03052021"
    vm_name                     = "jstartvm01"
    lun                         = 10
    storage_account_type        = "Standard_LRS"
    disk_size                   = "1024"
    caching                     = "None"
    disk_encryption_set_name    = "desknew031621"
    disk_encryption_set_rg_name = null
    write_accelerator_enabled   = false
    create_option               = null
    os_type                     = null
    source_resource_id          = null
  }
}
