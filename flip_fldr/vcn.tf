resource "oci_core_vcn" "flip-vcn" {
  compartment_id = oci_identity_compartment.flip_network.id
  cidr_block     = "10.0.2.0/24"
  display_name   = "flip-vcn"
  dns_label      = "flipvcn"
}