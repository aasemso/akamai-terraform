resource "akamai_appsec_security_policy" "juice_shop_ase_automatic_policy" {
  config_id              = data.akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "Juice Shop ASE Automatic Policy"
  security_policy_prefix = "AS22"
}

resource "akamai_appsec_security_policy" "testing_terraform_firewall_policy" {
  config_id              = data.akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "testing terraform firewall policy"
  security_policy_prefix = "waf3"
}

