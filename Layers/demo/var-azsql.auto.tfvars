resource_group_name = "jstart-vm-demo-08052020"

server_name                  = "jstartvmdemo08062020azsql"
database_names               = ["azuresqldb08062020"]
administrator_login_name     = "dbadmin"
administrator_login_password = null
allowed_subnet_names         = []
sku_name                     = "BC_Gen5_2"

firewall_rules = {
  rule1 = {
    name             = "azuresql-firewall-rule-default"
    start_ip_address = "0.0.0.0"
    end_ip_address   = "0.0.0.0"
  }
}

azuresql_additional_tags = {
  iac       = "Terraform"
  env       = "uat"
  automated_by = ""
  pe_enable = true
}
