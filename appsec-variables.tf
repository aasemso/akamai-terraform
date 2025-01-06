variable "group_name" {
  type    = string
  default = ""
}

variable "contract_id" {
  type    = string
  default = "105733"
}

variable "name" {
  type    = string
  default = "2410-wcxp"
}

variable "description" {
  type    = string
  default = "Created by Terraform"
}

variable "hostnames" {
  type    = list(string)
  default = ["2410-wcxp.akamaiuwebfraud.com"]
}

variable "emails" {
  type    = list(string)
  default = ["ase.marie.solnor@dnb.no"]
}

variable "activation_note" {
  type    = string
  default = "Activated by Terraform"
}

variable "network" {
  type    = string
  default = "STAGING"
}
