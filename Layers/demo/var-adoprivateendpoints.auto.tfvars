ado_private_endpoints = {
  ape1 = {
    name          = "jstartvmdemo08052020kv"
    resource_name = "jstartvmdemo08052020kv"
    group_ids     = ["vault"]
    dns_zone_name = "privatelink.vaultcore.azure.net"
  }
}

ado_resource_group_name = "ADO-Base-Infrastructure"
ado_vnet_name           = "ADOBaseInfrastructurevnet649"
ado_subnet_name         = "testakspe"
ado_subscription_id     = null

ado_pe_additional_tags = {
  iac = "Terraform"
  env = "uat"
  automated_by = ""
}
