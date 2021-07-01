resource_group_name = "[__resource_group_name__]"

private_dns_zones = {
  zone1 = {
    dns_zone_name = "privatelink.vaultcore.azure.net"
    zone_exists   = false
    vnet_links = [
      {
        zone_to_vnet_link_name    = "first-vnet-link"
        vnet_name                 = "jstartvmfirst"
        networking_resource_group = "[__networking_resource_group_name__]"
        zone_to_vnet_link_exists  = false
      }
    ]
    registration_enabled = false
  },
  zone2 = {
    dns_zone_name = "privatelink.database.windows.net"
    zone_exists   = false
    vnet_links = [
      {
        zone_to_vnet_link_name    = "first-vnet-link"
        vnet_name                 = "jstartvmfirst"
        networking_resource_group = "[__networking_resource_group_name__]"
        zone_to_vnet_link_exists  = false
      }
    ]
    registration_enabled = false
  },
  zone3 = {
    dns_zone_name = "privatelink.monitor.azure.com"
    zone_exists   = false
    vnet_links = [
      {
        zone_to_vnet_link_name    = "first-vnet-link"
        vnet_name                 = "jstartvmfirst"
        networking_resource_group = "[__networking_resource_group_name__]"
        zone_to_vnet_link_exists  = false
      }
    ]
    registration_enabled = false
  },
  zone4 = {
    dns_zone_name = "privatelink.oms.opinsights.azure.com"
    zone_exists   = false
    vnet_links = [
      {
        zone_to_vnet_link_name    = "first-vnet-link"
        vnet_name                 = "jstartvmfirst"
        networking_resource_group = "[__networking_resource_group_name__]"
        zone_to_vnet_link_exists  = false
      }
    ]
    registration_enabled = false
  },
  zone5 = {
    dns_zone_name = "privatelink.ods.opinsights.azure.com"
    zone_exists   = false
    vnet_links = [
      {
        zone_to_vnet_link_name    = "first-vnet-link"
        vnet_name                 = "jstartvmfirst"
        networking_resource_group = "[__networking_resource_group_name__]"
        zone_to_vnet_link_exists  = false
      }
    ]
    registration_enabled = false
  },
  zone6 = {
    dns_zone_name = "privatelink.agentsvc.azure-automation.net"
    zone_exists   = false
    vnet_links = [
      {
        zone_to_vnet_link_name    = "first-vnet-link"
        vnet_name                 = "jstartvmfirst"
        networking_resource_group = "[__networking_resource_group_name__]"
        zone_to_vnet_link_exists  = false
      }
    ]
    registration_enabled = false
  }
}

dns_zone_additional_tags = {
  iac          = "Terraform"
  env          = "uat"
  automated_by = ""
}