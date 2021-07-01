resource_group_name = "jstart-vm-demo-08052020"

private_endpoints = {
  pe1 = {
    resource_name     = "jstartvmdemo08052020kv"
    name              = "privateendpointkeyvault"
    subnet_name       = "proxy"
    group_ids         = ["vault"]
    approval_required = false
    approval_message  = null
  }
}

external_resource_ids = {}

pe_additional_tags = {
  iac = "Terraform"
  env = "uat"
  automated_by = ""
}
