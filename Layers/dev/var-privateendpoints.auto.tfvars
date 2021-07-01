resource_group_name = "[__resource_group_name__]"

private_endpoints = {
  pe1 = {
    resource_name             = "[__key_vault_name__]"
    name                      = "privateendpointkeyvault"
    subnet_name               = "proxy"
    vnet_name                 = null #"jstartvmfirst"
    networking_resource_group = "[__networking_resource_group_name__]"
    group_ids                 = ["vault"]
    approval_required         = false
    approval_message          = null
    dns_zone_names            = null
    dns_rg_name               = null
    dns_zone_group_name       = null
  },
  pe2 = {
    resource_name             = "jstartvm03152021azsql"
    name                      = "privateendpointazsql"
    subnet_name               = "proxy"
    vnet_name                 = null #"jstartvmfirst"
    networking_resource_group = "[__networking_resource_group_name__]"
    group_ids                 = ["sqlServer"]
    approval_required         = false
    approval_message          = null
    dns_zone_names            = null
    dns_rg_name               = null
    dns_zone_group_name       = null
  },
  pe3 = {
    resource_name             = "ampls290221"
    name                      = "peforampls03152021"
    subnet_name               = "proxy"
    vnet_name                 = null
    networking_resource_group = "[__networking_resource_group_name__]"
    group_ids                 = ["azuremonitor"] 
    approval_required         = false
    approval_message          = null
    dns_zone_names            = ["privatelink.monitor.azure.com", "privatelink.oms.opinsights.azure.com", "privatelink.ods.opinsights.azure.com", "privatelink.agentsvc.azure-automation.net"]
    dns_rg_name               = null
    dns_zone_group_name       = "amplsdns"
  }
}

# resource_ids = {
#   "[__key_vault_name__]" = "/subscriptions/[__subscription_id__]/resourceGroups/[__resource_group_name__]/providers/Microsoft.KeyVault/vaults/[__key_vault_name__]"
# }

external_resource_ids = {}

pe_additional_tags = {
  iac          = "Terraform"
  env          = "uat"
  automated_by = ""
}
