resource "akamai_appsec_custom_rule" "prefixcli_rule_60272823" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "requestMethodMatch",
          "value" : [
            "GET"
          ]
        },
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/*"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : true,
          "valueNormalize" : true,
          "valueWildcard" : true
        },
        {
          "name" : [
            "BlockMe",
            "blockme",
            "Blockme"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderMatch",
          "value" : [
            "1",
            "true",
            "yes"
          ],
          "valueCase" : true,
          "valueWildcard" : true
        }
      ],
      "description" : "Custom Rule for AppSec API Lab",
      "name" : "prefixCLI Rule",
      "operation" : "AND",
      "tag" : [
        "cli"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "ftp_block_60272329" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "positiveMatch" : true,
          "type" : "pathMatch",
          "value" : [
            "/ftp"
          ],
          "valueCase" : false,
          "valueIgnoreSegment" : true,
          "valueNormalize" : true,
          "valueWildcard" : true
        }
      ],
      "description" : "FTP Block",
      "name" : "FTP Block",
      "operation" : "AND",
      "tag" : [
        "ftp"
      ]
    }
  )
}

resource "akamai_appsec_custom_rule" "au_query_string_60271965" {
  config_id = akamai_appsec_configuration.config.config_id
  custom_rule = jsonencode(
    {
      "conditions" : [
        {
          "name" : "q",
          "nameCase" : false,
          "nameWildcard" : false,
          "positiveMatch" : true,
          "type" : "uriQueryMatch",
          "value" : [
            "AU"
          ],
          "valueCase" : false,
          "valueWildcard" : false
        }
      ],
      "name" : "AU Query String",
      "operation" : "AND",
      "tag" : [
        "au"
      ]
    }
  )
}

