# Import existing policies
/*import {
  to = data.akamai_appsec_security_policy.juice_shop_ase_automatic_policy
  id = data.akamai_appsec_configuration.config.config_id
}*/
#terraform import data.akamai_appsec_security_policy.juice_shop_ase_automatic_policy data.akamai_appsec_configuration.config.config_id:<policy_id>
#terraform import data.akamai_appsec_security_policy.testing_terraform_firewall_policy <existing_policy_id>


resource "akamai_appsec_security_policy" "juice_shop_ase_automatic_policy" {
  config_id              = data.akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "Juice Shop ASE Automatic Policy terraform"
  security_policy_prefix = "AS22"
}


resource "akamai_appsec_security_policy" "testing_terraform_firewall_policy" {
  config_id              = data.akamai_appsec_configuration.config.config_id
  default_settings       = true
  security_policy_name   = "testing terraform firewall policy terraform"
  security_policy_prefix = "waf3"
}

