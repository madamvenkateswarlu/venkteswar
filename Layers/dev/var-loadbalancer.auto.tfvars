resource_group_name = "[__resource_group_name__]"

load_balancers = {
  loadbalancer1 = {
    name = "jstartvmlb1"
    sku  = "Standard"
    frontend_ips = [
      {
        name                      = "jstartvmlbfrontend"
        subnet_name               = "loadbalancer"
        vnet_name                 = null #"jstartvmssfirst"
        networking_resource_group = "[__networking_resource_group_name__]"
        static_ip                 = null # "10.0.1.4" #(Optional) Set null to get dynamic IP 
        zones                     = null
      },
      {
        name                      = "jstartvmlbfrontend1"
        subnet_name               = "loadbalancer"
        vnet_name                 = null #"jstartvmssfirst"
        networking_resource_group = "[__networking_resource_group_name__]"
        static_ip                 = null # "10.0.1.4" #(Optional) Set null to get dynamic IP
        zones                     = null
      }
    ]
    backend_pool_names = ["jstartvmlbbackend", "jstartvmlbbackend1"]
    enable_public_ip   = false # set this to true to if you want to create public load balancer
    public_ip_name     = null
  },
}

load_balancer_rules = {
  loadbalancerrules1 = {
    name                      = "jstartvmlbrule"
    lb_key                    = "loadbalancer1"
    frontend_ip_name          = "jstartvmlbfrontend"
    backend_pool_name         = "jstartvmlbbackend"
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
}

load_balancer_nat_rules = {
  loadbalancernatrules1 = {
    name                    = "jstartvmlbnatrule"
    lb_keys                 = ["loadbalancer1"]
    frontend_ip_name        = "jstartvmlbfrontend"
    lb_port                 = 80
    backend_port            = 22
    idle_timeout_in_minutes = 5
  }
}

lb_additional_tags = {
  iac          = "Terraform"
  env          = "uat"
  automated_by = ""
}