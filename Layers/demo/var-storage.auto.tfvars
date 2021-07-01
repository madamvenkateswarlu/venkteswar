resource_group_name = "jstart-vm-demo-08052020"

storage_accounts = {
  sa1 = {
    name                    = "jstartvmdemo08052020sa"
    sku                     = "Standard_RAGRS"
    account_kind            = null
    access_tier             = null
    assign_identity         = true
    cmk_enable              = true
    network_rules           = null
    enable_large_file_share = false
  }
}

# containers = {
#   container1 = {
#     name                  = "test"
#     storage_account_name  = "jstartvmdemo08052020sa"
#     container_access_type = "private"
#   }
# }

# blobs = {
#   blob1 = {
#     name                   = "test"
#     storage_account_name   = "jstartvmdemo08052020sa"
#     storage_container_name = "test"
#     type                   = "Block"
#     size                   = null
#     content_type           = null
#     source_uri             = null
#     metadata               = {}
#   }
# }

# queues = {
#   queue1 = {
#     name                 = "test1"
#     storage_account_name = "jstartvmdemo08052020sa"
#   }
# }

file_shares = {
  share1 = {
    name                 = "share1"
    storage_account_name = "jstartvmdemo08052020sa"
    quota                = "512"
  }
}

tables = {
  table1 = {
    name                 = "table1"
    storage_account_name = "jstartvmdemo08052020sa"
  }
}

ado_private_endpoints = {
  ape1 = {
    name          = "jstartvmdemo08052020sablob"
    resource_name = "jstartvmdemo08052020sa"
    group_ids     = ["blob"]
    dns_zone_name = "privatelink.blob.core.windows.net"
  },
  ape2 = {
    name          = "jstartvmdemo08052020safile"
    resource_name = "jstartvmdemo08052020sa"
    group_ids     = ["file"]
    dns_zone_name = "privatelink.file.core.windows.net"
  },
  ape3 = {
    name          = "jstartvmdemo08052020satable"
    resource_name = "jstartvmdemo08052020sa"
    group_ids     = ["table"]
    dns_zone_name = "privatelink.table.core.windows.net"
  },
  ape4 = {
    name          = "jstartvmdemo08052020saqueue"
    resource_name = "jstartvmdemo08052020sa"
    group_ids     = ["queue"]
    dns_zone_name = "privatelink.queue.core.windows.net"
  }
}

ado_resource_group_name = "ADO-Base-Infrastructure"
ado_vnet_name           = "ADOBaseInfrastructurevnet649"
ado_subnet_name         = "testakspe"
ado_subscription_id     = null

sa_additional_tags = {
  iac       = "Terraform"
  env       = "uat"
  automated_by = ""
  pe_enable = true
}