variable "group_name" {
  type    = string
  default = "AU Web + Fraud Protection-V-3YSNQK2"
}

variable "contract_id" {
  type    = string
  default = "V-3YSNQK2"
  #default = "ctr_V-3YSNQK2"
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
variable "config_id" {
  type = string
}