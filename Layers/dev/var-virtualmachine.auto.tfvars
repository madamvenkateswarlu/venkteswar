resource_group_name = "[__resource_group_name__]"

linux_vms = {
  vm1 = {
    name                                 = "jstartvm01"
    vm_size                              = "Standard_DS1_v2"
    assign_identity                      = false
    availability_set_key                 = null
    vm_nic_keys                          = ["nic1", "nic2"]
    zone                                 = "1"
    disable_password_authentication      = true
    source_image_reference_offer         = "UbuntuServer" # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer
    source_image_reference_publisher     = "Canonical"    # set this to null if you are  using image id from shared image gallery or if you are passing image id to the VM through packer  
    source_image_reference_sku           = "18.04-LTS"    # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer 
    source_image_reference_version       = "Latest"       # set this to null if you are using image id from shared image gallery or if you are passing image id to the VM through packer             
    os_disk_name                         = "osdisklin03052021"
    storage_os_disk_caching              = "ReadWrite"
    managed_disk_type                    = "Premium_LRS"
    disk_size_gb                         = null
    write_accelerator_enabled            = null
    recovery_services_vault_name         = "tfex-recovery-vault"
    vm_backup_policy_name                = null #"tfex-recovery-vault-policy"
    ultra_ssd_enabled                    = false
    use_existing_ssh_key                 = false # set it to true if you want to use existing public ssh key
    secret_name_of_public_ssh_key        = null  # key vault secret name of existing public ssh key          # set it to true if you want to enable disk encryption using customer managed key
    use_existing_disk_encryption_set     = true
    existing_disk_encryption_set_name    = "desknew031621"
    existing_disk_encryption_set_rg_name = null
    custom_data_path                     = null #"//CustomData.tpl" # Optional
    custom_data_args                     = null #"{ name = "VMandVM", destination = "EASTUS2", version = "1.0" }

  }
}

linux_vm_nics = {
  nic1 = {
    name                           = "jstartvm01-nic1"
    subnet_name                    = "loadbalancer"
    vnet_name                      = null #"jstartvmfirst"
    networking_resource_group      = "[__networking_resource_group_name__]"
    lb_nat_rules                   = null # provide the name and resource IDs of the NAT rules if your LB will not be found in the state file (different env or not TF managed)
    app_security_group_names       = null
    app_gateway_backend_pool_names = null
    internal_dns_name_label        = null
    enable_ip_forwarding           = null # set it to true if you want to enable IP forwarding on the NIC
    enable_accelerated_networking  = null # set it to true if you want to enable accelerated networking
    dns_servers                    = null
    lb_backend_pools = [
      {
        name            = "jstartvmlbbackend" # provide the name here if your LB will not be found in the state file (different env or not TF managed)
        backend_pool_id = "/subscriptions/[__subscription_id__]/resourceGroups/[__resource_group_name__]/providers/Microsoft.Network/loadBalancers/jstartvmlb1/backendAddressPools/jstartvmlbbackend"
      }
    ]
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
  },
  nic2 = {
    name                      = "jstartvm01-nic2"
    subnet_name               = "loadbalancer"
    vnet_name                 = null #"jstartvmfirst"
    networking_resource_group = "[__networking_resource_group_name__]"
    lb_nat_rules = [
      {
        name        = "jstartvmlbnatrule"
        nat_rule_id = "/subscriptions/[__subscription_id__]/resourceGroups/[__resource_group_name__]/providers/Microsoft.Network/loadBalancers/jstartvmlb1/inboundNatRules/jstartvmlbnatrule"
      }
    ]
    app_security_group_names       = null
    app_gateway_backend_pool_names = ["appgateway-beap"]
    internal_dns_name_label        = null
    enable_ip_forwarding           = null # set it to true if you want to enable IP forwarding on the NIC
    enable_accelerated_networking  = null # set it to true if you want to enable accelerated networking
    dns_servers                    = null
    lb_backend_pools               = null
    nic_ip_configurations = [
      {
        static_ip = null
        name      = "ip-config-first"
      }
    ]
  }
}

administrator_user_name      = "demo"
administrator_login_password = null

diagnostics_sa_name = "[__storage_account_name__]"
key_vault_name      = null #"[__key_vault_name__]"

# Existing SSH Keys
ssh_key_vault_name    = "[__ado_key_vault_name__]"      # name of the key vault where existing public ssh key is stored
ssh_key_vault_rg_name = "[__ado_resource_group_name__]" # rg name of the key vault where existing public ssh key is stored
ado_subscription_id   = "[__ado_subscription_id__]"

vm_additional_tags = {
  iac            = "Terraform"
  env            = "uat"
  automated_by   = ""
  monitor_enable = true
}
