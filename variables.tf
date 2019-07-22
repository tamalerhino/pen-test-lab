variable "targets_network_alias" {
  description = "The network alias for all target containers"
  default     = "t_net"
}

variable "kali_network_alias" {
  description = "The network alias for Kali"
  default     = "kali_net"
}

variable "ext_port" {
  description = "Public port for Kali"
  default     = "8080"
}
