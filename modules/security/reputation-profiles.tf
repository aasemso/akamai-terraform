resource "akamai_appsec_reputation_profile" "web_attackers_high_threat" {
  config_id = data.akamai_appsec_configuration.config.config_id
  reputation_profile = jsonencode(
    {
      "context" : "WEBATCK",
      "name" : "Web Attackers (High Threat) terraform",
      "sharedIpHandling" : "NON_SHARED",
      "threshold" : 9
    }
  )
}

resource "akamai_appsec_reputation_profile" "dos_attackers_high_threat" {
  config_id = data.akamai_appsec_configuration.config.config_id
  reputation_profile = jsonencode(
    {
      "context" : "DOSATCK",
      "name" : "DoS Attackers (High Threat) terraform",
      "sharedIpHandling" : "NON_SHARED",
      "threshold" : 9
    }
  )
}

resource "akamai_appsec_reputation_profile" "scanning_tools_high_threat" {
  config_id = data.akamai_appsec_configuration.config.config_id
  reputation_profile = jsonencode(
    {
      "context" : "SCANTL",
      "name" : "Scanning Tools (High Threat) terraform",
      "sharedIpHandling" : "NON_SHARED",
      "threshold" : 9
    }
  )
}

resource "akamai_appsec_reputation_profile" "web_attackers_low_threat" {
  config_id = data.akamai_appsec_configuration.config.config_id
  reputation_profile = jsonencode(
    {
      "context" : "WEBATCK",
      "name" : "Web Attackers (Low Threat) terraform",
      "sharedIpHandling" : "NON_SHARED",
      "threshold" : 5
    }
  )
}

resource "akamai_appsec_reputation_profile" "dos_attackers_low_threat" {
  config_id = data.akamai_appsec_configuration.config.config_id
  reputation_profile = jsonencode(
    {
      "context" : "DOSATCK",
      "name" : "DoS Attackers (Low Threat) terraform",
      "sharedIpHandling" : "NON_SHARED",
      "threshold" : 5
    }
  )
}

resource "akamai_appsec_reputation_profile" "scanning_tools_low_threat" {
  config_id = data.akamai_appsec_configuration.config.config_id
  reputation_profile = jsonencode(
    {
      "context" : "SCANTL",
      "name" : "Scanning Tools (Low Threat) terraform",
      "sharedIpHandling" : "NON_SHARED",
      "threshold" : 5
    }
  )
}

resource "akamai_appsec_reputation_profile" "web_scrapers_low_threat" {
  config_id = data.akamai_appsec_configuration.config.config_id
  reputation_profile = jsonencode(
    {
      "context" : "WEBSCRP",
      "name" : "Web Scrapers (Low Threat) terraform",
      "sharedIpHandling" : "NON_SHARED",
      "threshold" : 5
    }
  )
}

resource "akamai_appsec_reputation_profile" "web_scrapers_high_threat" {
  config_id = data.akamai_appsec_configuration.config.config_id
  reputation_profile = jsonencode(
    {
      "context" : "WEBSCRP",
      "name" : "Web Scrapers (High Threat) terraform",
      "sharedIpHandling" : "NON_SHARED",
      "threshold" : 9
    }
  )
}

