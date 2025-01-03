// API Request Constraints
resource "akamai_appsec_api_request_constraints" "juice_shop_ase_automatic_policy_1019653" {
  config_id          = akamai_appsec_configuration.config.config_id
  security_policy_id = akamai_appsec_api_constraints_protection.juice_shop_ase_automatic_policy.security_policy_id
  api_endpoint_id    = 1019653 // Note: We don't have an API Endpoint Definitions in our provider yet so can't reference this ID to another resource
  action             = "alert"
}
