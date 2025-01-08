variable "name" {
  type = string
  default = "2410-wcxp"
}

variable "hostnames" {
  type = list(string)
  default = ["2410-wcxp.akamaiuwebfraud.com"]
  }

variable "description" {
  type = string
}

variable "contract_id" {
  type = string
  default = "WAAP V-3YSNQK2"
}

variable "group_id" {
  type = string
  #default = "WAAP V-3YSNQK2"
  default = "211815"
}

variable "group_name" {
  type = string
  #default = "grp_211815"
  default = "2410-wcxp"
}
variable "config_id" {
  type = string
}