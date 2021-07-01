resource_group_name = "[__resource_group_name__]"

storage_accounts = {
  sa1 = {
    name                     = "[__storage_account_name__]"
    sku                      = "Standard_RAGRS"
    account_kind             = null
    access_tier              = null
    assign_identity          = true
    cmk_enable               = true
    network_rules            = null
    min_tls_version          = "TLS1_2"
    large_file_share_enabled = false
  }
}

key_vault_name = null #"[__key_vault_name__]"

sa_additional_tags = {
  iac          = "Terraform"
  env          = "uat"
  automated_by = ""
  pe_enable    = true
}