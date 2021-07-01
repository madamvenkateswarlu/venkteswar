resource_group_name = "jstart-vm-demo-08052020"

private_link_services = {
  pls1 = {
    name                           = "privatelinkservicelayered" # "<private_link_service_name>"
    frontend_ip_config_name        = "nginxlbfrontend"           # "<lb_frontend_name>"
    subnet_name                    = "proxy"                     # "<subnet_name>"
    private_ip_address             = null                        # "<private_ip_address>"
    private_ip_address_version     = "IPv4"                      # "<private_ip_address_version>"
    visibility_subscription_ids    = null                        # <["00000000-0000-0000-0000-000000000000"]>
    auto_approval_subscription_ids = null                        # <["00000000-0000-0000-0000-000000000000"]>
    enable_proxy_protocol          = null
  }
}

pls_additional_tags = {
  iac = "Terraform"
  env = "uat"
  automated_by = ""
}
