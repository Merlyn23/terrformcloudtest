// Name of the vpc peering
variable "peering_name_1" {
  type        = string
  description = "Name of peered network"
}

variable "peering_name_2" {
  type        = string
  description = "Name of peered network"
}

variable "peering_vpc_01" {
  type        = string
  description = "Peering network-01 name"
}

variable "peering_project_01" {
  type        = string
  description = "Peering project-01 name"
}

variable "peering_vpc_02" {
  type        = string
  description = "Peering network-02 name"
}

variable "peering_project_02" {
  type        = string
  description = "Peering project-02 name"
}

variable "vpc_peering_network_link_1" {
  type        = string
  description = "vpc_peering_network_link_1"
}

variable "vpc_peering_network_link_2" {
  type        = string
  description = "vpc_peering_network_link_2"
}


variable "export_custom_routes_1" {
  type        = bool
  description = "Peering project-02 name"
}

variable "import_custom_routes_1" {
  type        = bool
  description = "Peering project-02 name"
}

variable "export_subnet_routes_with_public_ip_1" {
  type        = bool
  description = "Peering project-02 name"
}

variable "import_subnet_routes_with_public_ip_1" {
  type        = bool
  description = "Peering project-02 name"
}

variable "export_custom_routes_2" {
  type        = bool
  description = "Peering project-02 name"
}

variable "import_custom_routes_2" {
  type        = bool
  description = "Peering project-02 name"
}

variable "export_subnet_routes_with_public_ip_2" {
  type        = bool
  description = "Peering project-02 name"
}

variable "import_subnet_routes_with_public_ip_2" {
  type        = bool
  description = "Peering project-02 name"
}