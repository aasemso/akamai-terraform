// Global Advanced
resource "akamai_appsec_advanced_settings_logging" "logging" {
  config_id = data.akamai_appsec_configuration.config.config_id
  logging = jsonencode(
    {
      "allowSampling" : true,
      "cookies" : {
        "type" : "all"
      },
      "customHeaders" : {
        "type" : "all"
      },
      "standardHeaders" : {
        "type" : "all"
      }
    }
  )
}

resource "akamai_appsec_advanced_settings_prefetch" "prefetch" {
  config_id            = data.akamai_appsec_configuration.config.config_id
  enable_app_layer     = true
  all_extensions       = false
  enable_rate_controls = false
  extensions           = ["cgi", "jsp", "aspx", "EMPTY_STRING", "php", "py", "asp"]
}

resource "akamai_appsec_advanced_settings_pragma_header" "pragma_header" {
  config_id = data.akamai_appsec_configuration.config.config_id
  pragma_header = jsonencode(
    {
      "action" : "REMOVE"
    }
  )
}

resource "akamai_appsec_advanced_settings_evasive_path_match" "evasive_path_match" {
  config_id         = data.akamai_appsec_configuration.config.config_id
  enable_path_match = true
}

resource "akamai_appsec_advanced_settings_pii_learning" "pii_learning" {
  config_id           = data.akamai_appsec_configuration.config.config_id
  enable_pii_learning = false
}

resource "akamai_appsec_advanced_settings_attack_payload_logging" "attack_payload_logging" {
  config_id = data.akamai_appsec_configuration.config.config_id
  attack_payload_logging = jsonencode(
    {
      "enabled" : true,
      "requestBody" : {
        "type" : "ATTACK_PAYLOAD"
      },
      "responseBody" : {
        "type" : "ATTACK_PAYLOAD"
      }
    }
  )
}

resource "akamai_appsec_advanced_settings_request_body" "config_settings" {
  config_id                     = data.akamai_appsec_configuration.config.config_id
  request_body_inspection_limit = "default"
}

// Pragma Header
resource "akamai_appsec_advanced_settings_pragma_header" "juice_shop_ase_automatic_policy" {
  config_id          = data.akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.juice_shop_ase_automatic_policy.security_policy_id
  pragma_header = jsonencode(
    {
      "action" : "NONE"
    }
  )
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "juice_shop_ase_automatic_policy" {
  config_id          = data.akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.juice_shop_ase_automatic_policy.security_policy_id
  enable_path_match  = true
}

// Evasive Path Match
resource "akamai_appsec_advanced_settings_evasive_path_match" "testing_terraform_firewall_policy" {
  config_id          = data.akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_security_policy.testing_terraform_firewall_policy.security_policy_id
  enable_path_match  = true
}
