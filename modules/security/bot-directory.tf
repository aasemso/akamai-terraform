resource "akamai_botman_custom_bot_category" "ak_2410wcxp_friendlypartnerbot_09631d9f-e255-4e46-ab7f-6722531409c0" {
  config_id = data.akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "2410-wcxp_FriendlyPartnerBot",
      "notes" : "Identified by user agent and secret cookie"
    }
  )
}

resource "akamai_botman_custom_bot_category" "ak_2410wcxp_impersonatorpartnerbot_f0a8eb23-3a1e-4d6b-9448-055d5c81b23a" {
  config_id = data.akamai_appsec_configuration.config.config_id
  custom_bot_category = jsonencode(
    {
      "categoryName" : "2410-wcxp_ImpersonatorPartnerBot"
    }
  )
}

resource "akamai_botman_custom_bot_category_sequence" "custom_bot_category_sequence" {
  config_id    = data.akamai_appsec_configuration.config.config_id
  category_ids = [akamai_botman_custom_bot_category.ak_2410wcxp_friendlypartnerbot_09631d9f-e255-4e46-ab7f-6722531409c0.category_id, akamai_botman_custom_bot_category.ak_2410wcxp_impersonatorpartnerbot_f0a8eb23-3a1e-4d6b-9448-055d5c81b23a.category_id]
}

resource "akamai_botman_custom_defined_bot" "ak_2410wcxp_friendlyjailbot_7534d608-6baf-47e2-b726-b0c6b13078cc" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "2410-wcxp_FriendlyJailBot",
      "categoryId" : "09631d9f-e255-4e46-ab7f-6722531409c0",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "PartnerJailBot"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "name" : "partNumber",
          "nameCase" : false,
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestCookieCondition",
          "value" : [
            "DWJhAXa22XkL"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ]
    }
  )
}

resource "akamai_botman_custom_defined_bot" "ak_2410wcxp_impersonatorjailbot_e8a64529-73f3-4344-b0f0-46102f90ea21" {
  config_id = akamai_botman_custom_bot_category_sequence.custom_bot_category_sequence.config_id
  custom_defined_bot = jsonencode(
    {
      "botName" : "2410-wcxp_ImpersonatorJailBot",
      "categoryId" : "f0a8eb23-3a1e-4d6b-9448-055d5c81b23a",
      "conditions" : [
        {
          "name" : [
            "User-Agent"
          ],
          "nameWildcard" : true,
          "positiveMatch" : true,
          "type" : "requestHeaderCondition",
          "value" : [
            "PartnerJailBot"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        },
        {
          "name" : "partNumber",
          "nameCase" : false,
          "nameWildcard" : true,
          "positiveMatch" : false,
          "type" : "requestCookieCondition",
          "value" : [
            "DWJhAXa22XkL"
          ],
          "valueCase" : false,
          "valueWildcard" : true
        }
      ]
    }
  )
}

