variable "name" {
  type = string
  default = "2410-wcxp"
}

variable "hostnames" {
  type = list(string)
  default = ["2410-wcxp.akamaiuwebfraud.com"]
  }

/*variable "hostnames" {
  type = list(object({
    cnameType             = string
    edgeHostnameId        = string
    cnameFrom             = string
    cnameTo               = string
    certProvisioningType  = string
  }))
  default = [
    {
      cnameType             = "EDGE_HOSTNAME"
      edgeHostnameId        = "ehn_5055499"
      cnameFrom             = "2410-wcxp.akamaiuwebfraud.com"
      cnameTo               = "waap.akamaiuwebfraud.com.edgekey.net"
      certProvisioningType  = "CPS_MANAGED"
    }
  ]
}*/


variable "description" {
  type = string
}

variable "contract_id" {
  type = string
  default = "V-3YSNQK2"
}

variable "group_id" {
  type = string
  default = "211815"
}

variable "group_name" {
  type = string
  default = "2410-wcxp"
}
