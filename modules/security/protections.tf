// Enable/Disable Protections for policy juice_shop_ase_automatic_policy
resource "akamai_appsec_waf_protection" "juice_shop_ase_automatic_policy" {
  config_id          = data.akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.juice_shop_ase_automatic_policy.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "juice_shop_ase_automatic_policy" {
  config_id          = data.akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.juice_shop_ase_automatic_policy.security_policy_id
  enabled            = true
}

resource "akamai_appsec_ip_geo_protection" "juice_shop_ase_automatic_policy" {
  config_id          = data.akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.juice_shop_ase_automatic_policy.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "juice_shop_ase_automatic_policy" {
  config_id          = data.akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.juice_shop_ase_automatic_policy.security_policy_id
  enabled            = true
}

resource "akamai_appsec_rate_protection" "juice_shop_ase_automatic_policy" {
  config_id          = data.akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.juice_shop_ase_automatic_policy.security_policy_id
  enabled            = true
}

resource "akamai_appsec_reputation_protection" "juice_shop_ase_automatic_policy" {
  config_id          = data.akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.juice_shop_ase_automatic_policy.security_policy_id
  enabled            = true
}

resource "akamai_appsec_slowpost_protection" "juice_shop_ase_automatic_policy" {
  config_id          = data.akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.juice_shop_ase_automatic_policy.security_policy_id
  enabled            = true
}

resource "akamai_botman_bot_management_settings" "juice_shop_ase_automatic_policy" {
  config_id          = data.akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_slowpost_protection.juice_shop_ase_automatic_policy.security_policy_id
  bot_management_settings = jsonencode(
    {
      "addAkamaiBotHeader" : false,
      "enableActiveDetections" : true,
      "enableBotManagement" : true,
      "enableBrowserValidation" : false,
      "removeBotManagementCookies" : false,
      "thirdPartyProxyServiceInUse" : false
    }
  )
}
// Enable/Disable Protections for policy testing_terraform_firewall_policy
resource "akamai_appsec_waf_protection" "testing_terraform_firewall_policy" {
  config_id          = data.akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.testing_terraform_firewall_policy.security_policy_id
  enabled            = true
}

resource "akamai_appsec_api_constraints_protection" "testing_terraform_firewall_policy" {
  config_id          = data.akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_waf_protection.testing_terraform_firewall_policy.security_policy_id
  enabled            = false
}

resource "akamai_appsec_ip_geo_protection" "testing_terraform_firewall_policy" {
  config_id          = data.akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.testing_terraform_firewall_policy.security_policy_id
  enabled            = true
}

resource "akamai_appsec_malware_protection" "testing_terraform_firewall_policy" {
  config_id          = data.akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_ip_geo_protection.testing_terraform_firewall_policy.security_policy_id
  enabled            = true
}

resource "akamai_appsec_rate_protection" "testing_terraform_firewall_policy" {
  config_id          = data.akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_malware_protection.testing_terraform_firewall_policy.security_policy_id
  enabled            = false
}

resource "akamai_appsec_reputation_protection" "testing_terraform_firewall_policy" {
  config_id          = data.akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_rate_protection.testing_terraform_firewall_policy.security_policy_id
  enabled            = false
}

resource "akamai_appsec_slowpost_protection" "testing_terraform_firewall_policy" {
  config_id          = data.akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_reputation_protection.testing_terraform_firewall_policy.security_policy_id
  enabled            = false
}

