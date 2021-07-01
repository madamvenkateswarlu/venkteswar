resource_group_name = "[__resource_group_name__]"

action_groups = {
  ag1 = {
    name                     = "ag03052021"
    short_name               = "agshort"
    enabled                  = null
    arm_role_receivers       = null
    azure_app_push_receivers = null
    azure_function_receivers = null
    email_receivers          = null
    logic_app_receivers      = null
    voice_receivers          = null
    webhook_receivers        = null
    sms_receivers            = null
  }
}

azure_monitor_additional_tags = {
  iac          = "Terraform"
  env          = "uat"
  automated_by = ""
}