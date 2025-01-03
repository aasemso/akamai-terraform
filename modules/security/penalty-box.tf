// Penalty Box
resource "akamai_appsec_penalty_box" "juice_shop_ase_automatic_policy" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.juice_shop_ase_automatic_policy.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "alert"
}
// Penalty Box
resource "akamai_appsec_penalty_box" "testing_terraform_firewall_policy" {
  config_id              = akamai_appsec_configuration.config.config_id
  security_policy_id     = akamai_appsec_security_policy.testing_terraform_firewall_policy.security_policy_id
  penalty_box_protection = true
  penalty_box_action     = "alert"
}
