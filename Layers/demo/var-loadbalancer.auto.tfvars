resource_group_name = "jstart-vm-demo-08052020"

load_balancers = {
  loadbalancer1 = {
    name = "nginxlb"
    sku  = "Standard"
    frontend_ips = [
      {
        name        = "nginxlbfrontend"
        subnet_name = "loadbalancer"
        static_ip   = null # "10.0.1.4" #(Optional) Set null to get dynamic IP 
        zones       = null
      },
      {
        name        = "nginxlbfrontend1"
        subnet_name = "loadbalancer"
        static_ip   = null # "10.0.1.4" #(Optional) Set null to get dynamic IP
        zones       = null
      }
    ]
    backend_pool_names = ["nginxlbbackend", "nginxlbbackend1"]
    enable_public_ip   = false # set this to true to if you want to create public load balancer
    public_ip_name     = null
  },
  loadbalancer2 = {
    name = "nginxlbpublic"
    sku  = "Standard"
    frontend_ips = [
      {
        name        = "nginxlbfrontendpublic"
        subnet_name = null
        static_ip   = null
        zones       = null
      }
    ]
    backend_pool_names = ["nginxlbbackendpublic"]
    enable_public_ip   = true
    public_ip_name     = "nginxlbpublicip"
  }
}

load_balancer_rules = {
  loadbalancerrules1 = {
    name                      = "nginxlbrule"
    lb_key                    = "loadbalancer1"
    frontend_ip_name          = "nginxlbfrontend"
    backend_pool_name         = "nginxlbbackend"
    lb_protocol               = null
    lb_port                   = "22"
    probe_port                = "22"
    backend_port              = "22"
    enable_floating_ip        = null
    disable_outbound_snat     = null
    enable_tcp_reset          = null
    probe_protocol            = "Tcp"
    request_path              = "/"
    probe_interval            = 15
    probe_unhealthy_threshold = 2
    load_distribution         = "SourceIPProtocol"
    idle_timeout_in_minutes   = 5
  }
}

load_balancer_nat_pools = {}

lb_outbound_rules = {
  rule1 = {
    name                            = "outboundrule"
    lb_key                          = "loadbalancer2"
    protocol                        = "Tcp"
    backend_pool_name               = "nginxlbbackendpublic"
    allocated_outbound_ports        = null
    frontend_ip_configuration_names = ["nginxlbfrontendpublic"]
  }
}

load_balancer_nat_rules = {
  loadbalancernatrules1 = {
    name                    = "ngnixlbnatrule"
    lb_key                  = "loadbalancer1"
    frontend_ip_name        = "nginxlbfrontend"
    backend_pool_name       = "nginxlbbackend"
    lb_port                 = 80
    backend_port            = 22
    idle_timeout_in_minutes = 5
  }
}

lb_additional_tags = {
  iac = "Terraform"
  env = "uat"
  automated_by = ""
}