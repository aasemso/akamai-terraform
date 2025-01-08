variable "name" {
  type = string
  default = "2410-wcxp"
}

variable "config_id" {
  type = number
  default = 105733
}

variable "note" {
  type = string
}

variable "network" {
  type = string
  default = "STAGING"
}

variable "notification_emails" {
  type = list(string)
  default = ["ase.marie.solnor@dnb.no"]
}
