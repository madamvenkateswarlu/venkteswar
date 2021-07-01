resource_group_name = "[__resource_group_name__]"

private_link_scope = {
  scope1 = {
    name              = "ampls031621"
    la_workspace_name = "[__log_analytics_name__]" # name of the log analytics work space  
  }
}

private_link_scope_additional_tags = {
  pe_enable = true
}