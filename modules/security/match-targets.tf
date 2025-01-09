resource "akamai_appsec_match_target" "website_8790835" {
  config_id = data.akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "2410-wcxp.akamaiuwebfraud.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.juice_shop_ase_automatic_policy.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}
resource "akamai_appsec_match_target" "website_8934438" {
  config_id = data.akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "defaultFile" : "NO_MATCH",
      "filePaths" : [
        "/*"
      ],
      "hostnames" : [
        "2410-wcxp.akamaiuwebfraud.com"
      ],
      "isNegativeFileExtensionMatch" : false,
      "isNegativePathMatch" : false,
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.testing_terraform_firewall_policy.security_policy_id
      },
      "sequence" : 0,
      "type" : "website"
    }
  )
}

resource "akamai_appsec_match_target" "api_8848231" {
  config_id = data.akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "apis" : [
        {
          "id" : 1019653,
          "name" : "2410-wcxp-2"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.juice_shop_ase_automatic_policy.security_policy_id
      },
      "sequence" : 3,
      "type" : "api"
    }
  )
}

resource "akamai_appsec_match_target" "api_8934439" {
  config_id = data.akamai_appsec_configuration.config.config_id
  match_target = jsonencode(
    {
      "apis" : [
        {
          "id" : 1019653,
          "name" : "2410-wcxp-2"
        }
      ],
      "securityPolicy" : {
        "policyId" : akamai_appsec_security_policy.testing_terraform_firewall_policy.security_policy_id
      },
      "sequence" : 4,
      "type" : "api"
    }
  )
}
