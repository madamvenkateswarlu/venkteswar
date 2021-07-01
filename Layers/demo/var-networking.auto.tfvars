resource_group_name = "jstart-vm-demo-08052020"
location            = "eastus2"
net_location        = null

virtual_networks = {
  virtualnetwork1 = {
    name                 = "jstartvmfirst"
    address_space        = ["10.0.0.0/16"]
    dns_servers          = null
    ddos_protection_plan = null
  },
  virtualnetwork2 = {
    name                 = "jstartvmsecond"
    address_space        = ["172.16.0.0/16"]
    dns_servers          = null
    ddos_protection_plan = null
  }
}

vnet_peering = {}

subnets = {
  subnet1 = {
    vnet_key          = "virtualnetwork1"
    nsg_key           = "nsg1"
    rt_key            = null
    name              = "loadbalancer"
    address_prefixes  = ["10.0.1.0/24"]
    service_endpoints = ["Microsoft.Sql", "Microsoft.AzureCosmosDB"]
    pe_enable         = false
    delegation        = []
  },
  subnet2 = {
    vnet_key          = "virtualnetwork1"
    nsg_key           = null
    rt_key            = null
    name              = "proxy"
    address_prefixes  = ["10.0.2.0/24"]
    pe_enable         = true
    service_endpoints = null
    delegation        = []
  },
  subnet3 = {
    vnet_key          = "virtualnetwork1"
    nsg_key           = null
    rt_key            = null
    name              = "application"
    address_prefixes  = ["10.0.3.0/24"]
    pe_enable         = false
    service_endpoints = ["Microsoft.Sql", "Microsoft.AzureCosmosDB"]
    delegation        = []
  },
  subnet4 = {
    vnet_key          = "virtualnetwork2"
    nsg_key           = null
    rt_key            = null
    name              = "applicationgateway"
    address_prefixes  = ["172.16.0.0/24"]
    pe_enable         = true
    service_endpoints = null
    delegation        = []
  },
  subnet5 = {
    vnet_key          = "virtualnetwork1"
    nsg_key           = null
    rt_key            = null
    name              = "AzureFirewallSubnet"
    address_prefixes  = ["10.0.4.0/24"]
    pe_enable         = true
    service_endpoints = null
    delegation        = []
  }
}

route_tables = {}

network_security_groups = {
  nsg1 = {
    name = "nsg1"
    tags = { log_workspace = "Log_Analytic_Workspace_Name" }
    security_rules = [
      {
        name                                         = "sample-nsg"
        description                                  = "Sample NSG"
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
        source_application_security_group_names      = null # ["asg-first"]
        destination_application_security_group_names = null # ["asg-second"]
      }
    ]
  }
}

net_additional_tags = {
  iac = "Terraform"
  env = "uat"
  automated_by = ""
}