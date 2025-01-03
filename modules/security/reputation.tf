// Client Reputation Actions
resource "akamai_appsec_reputation_profile_action" "juice_shop_ase_automatic_policy_7818585" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.juice_shop_ase_automatic_policy.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "juice_shop_ase_automatic_policy_7818587" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.juice_shop_ase_automatic_policy.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "juice_shop_ase_automatic_policy_7818589" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.juice_shop_ase_automatic_policy.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_high_threat.reputation_profile_id
  action                = "deny"
}
resource "akamai_appsec_reputation_profile_action" "juice_shop_ase_automatic_policy_7818591" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.juice_shop_ase_automatic_policy.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "juice_shop_ase_automatic_policy_7818593" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.juice_shop_ase_automatic_policy.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.dos_attackers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "juice_shop_ase_automatic_policy_7818595" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.juice_shop_ase_automatic_policy.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.scanning_tools_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "juice_shop_ase_automatic_policy_7818597" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.juice_shop_ase_automatic_policy.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_low_threat.reputation_profile_id
  action                = "alert"
}
resource "akamai_appsec_reputation_profile_action" "juice_shop_ase_automatic_policy_7818599" {
  config_id             = akamai_appsec_configuration.config.config_id
  security_policy_id    = akamai_appsec_reputation_protection.juice_shop_ase_automatic_policy.security_policy_id
  reputation_profile_id = akamai_appsec_reputation_profile.web_scrapers_high_threat.reputation_profile_id
  action                = "deny"
}
