resource_group_name = "jstart-vm-demo-08052020"

dns_a_records = {
  arecord1 = {
    a_record_name         = "keyvault-arecord"                # <"dns+a_record_name">
    dns_zone_name         = "privatelink.vaultcore.azure.net" # <"dns_zone_name">
    ttl                   = 300                               # <time_to_live_of_the_dns_record_in_seconds>
    ip_addresses          = null                              # <list_of_ipv4_addresses>
    private_endpoint_name = "privateendpointkeyvault"         # <"name of private endpoint for which DNSARecord to be created"
  }
}

dns_arecord_additional_tags = {
  iac = "Terraform"
  env = "uat"
  automated_by = ""
}