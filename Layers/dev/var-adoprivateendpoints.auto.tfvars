ado_private_endpoints = {
  ape1 = {
    name          = "[__key_vault_name__]"
    resource_name = "[__key_vault_name__]"
    group_ids     = ["vault"]
    dns_zone_name = "privatelink.vaultcore.azure.net"
  }
}

# resource_ids = {
#   "[__key_vault_name__]" = "/subscriptions/[__subscription_id__]/resourceGroups/[__resource_group_name__]/providers/Microsoft.KeyVault/vaults/[__key_vault_name__]"
# }

ado_resource_group_name = "[__ado_resource_group_name__]"
ado_vnet_name           = "[__ado_vnet_name__]"
ado_subnet_name         = "[__ado_subnet_name__]"
ado_subscription_id     = "[__ado_subscription_id__]"

ado_pe_additional_tags = {
  iac          = "Terraform"
  env          = "uat"
  automated_by = ""
}
