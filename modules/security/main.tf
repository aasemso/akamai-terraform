data "akamai_appsec_configuration" "config" {
  name        = var.name
  #description = var.description
  #contract_id = var.contract_id
  #group_id    = trimprefix(data.akamai_group.group.id, "grp_")
  #group_id    = var.group_id
  #host_names  = var.hostnames
  #config_id   = var.config_id
}

/*resource "akamai_appsec_configuration" "config" {
  create_from_config_id = var.config_id
  name        = var.name
  description = var.description
  contract_id = var.contract_id
  #group_id    = trimprefix(data.akamai_group.group.id, "grp_")
  group_id    = var.group_id
  host_names  = var.hostnames
}*/

data "akamai_group" "group" {
  group_name  = var.group_name
  contract_id = var.contract_id
}

output "config_id" {
  value = data.akamai_appsec_configuration.config.config_id
}
