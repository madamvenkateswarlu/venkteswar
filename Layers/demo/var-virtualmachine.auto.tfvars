resource_group_name = "jstart-vm-demo-08052020"

linux_vms = {
  vm1 = {
    name                             = "vm-001"
    vm_size                          = "Standard_DS1_v2"
    assign_identity                  = true
    avaialability_set_key            = null
    lb_backend_pool_names            = ["nginxlbbackend", "nginxlbbackendpublic"]
    lb_nat_rule_names                = null
    app_security_group_names         = null
    app_gateway_name                 = null
    zone                             = "1"
    subnet_name                      = "loadbalancer"
    disable_password_authentication  = true
    source_image_reference_offer     = "UbuntuServer" # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer
    source_image_reference_publisher = "Canonical"    # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer  
    source_image_reference_sku       = "18.04-LTS"    # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer 
    source_image_reference_version   = "Latest"       # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer             
    storage_os_disk_caching          = "ReadWrite"
    managed_disk_type                = "Premium_LRS"
    disk_size_gb                     = null
    write_accelerator_enabled        = null
    internal_dns_name_label          = null
    enable_ip_forwarding             = null # set it to true if you want to enable IP forwarding on the NIC
    enable_accelerated_networking    = null # set it to true if you want to enable accelerated networking
    dns_servers                      = null
    recovery_services_vault_key      = null
    enable_cmk_disk_encryption       = true # set it to true if you want to enable disk encryption using customer managed key
    custom_data_path                 = null #"//Terraform//Scripts//CustomData.tpl" # Optional
    custom_data_args                 = null #"{ name = "VMandVM", destination = "EASTUS2", version = "1.0" }
    diagnostics_storage_config_path  = null #""//Terraform//Diagnostics//Config.json" # Optional
    nic_ip_configurations = [
      {
        static_ip = null
        name      = "ip-config-first"
      },
      {
        static_ip = null
        name      = "ip-config-second"
      }
    ]
    custom_script = {
      commandToExecute   = "ls"
      scriptPath         = null
      scriptArgs         = null
      fileUris           = null
      storageAccountName = null
    }
    # custom_script = {
    #   commandToExecute   = "sh script1.sh"
    #   scriptPath         = null
    #   scriptArgs         = null
    #   fileUris           = ["https://jstartvm17062020s.blob.core.windows.net/script/script1.sh"]
    #   storageAccountName = "jstartvm17062020s"
    # }
    # custom_script = {
    #   commandToExecute   = null
    #   scriptPath         = "//Terraform//Scripts//script1.sh"
    #   scriptArgs         = null
    #   fileUris           = null
    #   storageAccountName = null
    # }
  }
}

administrator_user_name      = "demo"
administrator_login_password = null

diagnostics_sa_name = "jstartvmdemo08052020sa"

managed_data_disks = {
  "disk1" = {
    disk_name                 = "diskvm07082020"
    vm_key                    = "vm1"
    lun                       = 10
    storage_account_type      = "Standard_LRS"
    disk_size                 = "1024"
    caching                   = "None"
    write_accelerator_enabled = false
    create_option             = null
    os_type                   = null
    source_resource_id        = null
  }
}

vm_additional_tags = {
  iac            = "Terraform"
  env            = "uat"
  automated_by = ""
  monitor_enable = true
}
