variable "vcn_compartment_id" {
  description = "value of the compartment OCID where the VCN will be created"
  type        = string
}

variable "vcn_cidr_block" {
  description = "CIDR block for the VCN"
  type        = string
}

variable "vcn_display_name" {
  description = "Display name for the VCN"
  type        = string
}

variable "vcn_dns_label" {
  description = "DNS label for the VCN"
  type        = string
}