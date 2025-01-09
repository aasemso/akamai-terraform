// Slow Post Protection
resource "akamai_appsec_slow_post" "juice_shop_ase_automatic_policy" {
  config_id                  = data.akamai_appsec_configuration.config.config_id
  security_policy_id         = akamai_appsec_slowpost_protection.juice_shop_ase_automatic_policy.security_policy_id
  slow_rate_action           = "alert"
  slow_rate_threshold_rate   = 10
  slow_rate_threshold_period = 60
}

