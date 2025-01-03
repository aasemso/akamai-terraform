// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "juice_shop_ase_automatic_policy" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.juice_shop_ase_automatic_policy.security_policy_id
  mode                       = "block"
  geo_network_lists          = ["155729_GEOBLOCKLIST117429GEOBLO"]
  ip_network_lists           = ["155724_IPBLOCKLIST117429IPBLOC"]
  exception_ip_network_lists = ["117430_IPBLOCKLISTEXCEPTION"]
  ukraine_geo_control_action = "none"
}

// IP/GEO/ASN Firewall
resource "akamai_appsec_ip_geo" "testing_terraform_firewall_policy" {
  config_id                  = akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_ip_geo_protection.testing_terraform_firewall_policy.security_policy_id
  mode                       = "block"
  ukraine_geo_control_action = "none"
}

