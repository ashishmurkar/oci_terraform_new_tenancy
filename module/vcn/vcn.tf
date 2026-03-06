resource "oci_core_vcn" "vcn" {
  compartment_id = var.vcn_compartment_id
  cidr_block     = var.vcn_cidr_block
  display_name   = var.vcn_display_name
  dns_label      = var.vcn_dns_label
}