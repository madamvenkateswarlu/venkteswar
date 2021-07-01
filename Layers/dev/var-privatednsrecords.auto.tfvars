resource_group_name = "[__resource_group_name__]"

dns_a_records = {
  arecord1 = {
    a_record_name         = "[__key_vault_name__]"            # <"dns_a_record_name">
    dns_zone_name         = "privatelink.vaultcore.azure.net" # <"dns_zone_name">
    ttl                   = 300                               # <time_to_live_of_the_dns_record_in_seconds>
    ip_addresses          = null                              # <list_of_ipv4_addresses>
    private_endpoint_name = "privateendpointkeyvault"         # <"name of private endpoint for which DNSARecord to be created"
  },
  arecord2 = {
    a_record_name         = "jstartvm03052021azsql"            # <"dns_a_record_name">
    dns_zone_name         = "privatelink.database.windows.net" # <"dns_zone_name">
    ttl                   = 300                                # <time_to_live_of_the_dns_record_in_seconds>
    ip_addresses          = null                               # <list_of_ipv4_addresses>
    private_endpoint_name = "privateendpointazsql"             # <"name of private endpoint for which DNSARecord to be created"
  }
}

dns_records_additional_tags = {
  iac          = "Terraform"
  env          = "uat"
  automated_by = ""
}