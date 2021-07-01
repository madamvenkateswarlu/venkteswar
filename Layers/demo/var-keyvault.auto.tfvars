resource_group_name = "jstart-vm-demo-08052020"

name                            = "jstartvmdemo08052020kv"
enabled_for_deployment          = null
enabled_for_disk_encryption     = null
enabled_for_template_deployment = null
soft_delete_enabled             = true
purge_protection_enabled        = true
sku_name                        = "standard"
secrets                         = {}
access_policies                 = {}
network_acls                    = null

kv_additional_tags = {
  pe_enable = true
  iac       = "Terraform"
  env       = "uat"
  automated_by = ""
}
