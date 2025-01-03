resource "akamai_botman_client_side_security" "client_side_security" {
  config_id = akamai_appsec_configuration.config.config_id
  client_side_security = jsonencode(
    {
      "useAllSecureTraffic" : false,
      "useSameSiteCookies" : false,
      "useStrictCspCompatibility" : false
    }
  )
}

