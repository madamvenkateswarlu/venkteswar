resource_group_name = "jstart-vm-demo-08052020"

name              = "jstartvmdemo08052020law"
sku               = "PerGB2018"
retention_in_days = 30

log_analytics_additional_tags = {
  iac = "Terraform"
  env = "uat"
  automated_by = ""
}
