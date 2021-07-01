resource_group_name = "[__resource_group_name__]"

network_security_groups = {
  nsg1 = {
    name                      = "nsg1"
    tags                      = { log_workspace = "[__log_analytics_name__]" }
    subnet_name               = "loadbalancer"
    vnet_name                 = null
    networking_resource_group = "[__networking_resource_group_name__]"
    security_rules = [
      {
        name                                         = "nsg"
        description                                  = "NSG"
        priority                                     = 101
        direction                                    = "Outbound"
        access                                       = "Allow"
        protocol                                     = "Tcp"
        source_port_range                            = "*"
        source_port_ranges                           = null
        destination_port_range                       = "*"
        destination_port_ranges                      = null
        source_address_prefix                        = "*"
        source_address_prefixes                      = null
        destination_address_prefix                   = "*"
        destination_address_prefixes                 = null
        source_application_security_group_names      = null
        destination_application_security_group_names = null
      }
    ]
  }
}

nsg_additional_tags = {
  iac          = "Terraform"
  env          = "uat"
  automated_by = ""
}