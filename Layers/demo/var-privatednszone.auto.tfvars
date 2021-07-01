resource_group_name = "jstart-vm-demo-08052020"

private_dns_zones = {
  zone1 = {
    dns_zone_name = "privatelink.vaultcore.azure.net"
    zone_exists   = false
    vnet_links = [
      {
        zone_to_vnet_link_name   = "first-vnet-link"
        vnet_name                = "jstartvmfirst"
        zone_to_vnet_link_exists = false
      }
    ]
    registration_enabled = false
  }
}

dns_zone_additional_tags = {
  iac = "Terraform"
  env = "uat"
  automated_by = ""
}