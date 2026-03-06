module "vcn" {
  source = "../module/vcn/"

  vcn_compartment_id = oci_identity_compartment.skillup_network.id
  vcn_display_name   = "skillup-vcn"
  vcn_cidr_block     = "10.0.3.0/24"
  vcn_dns_label      = "skillupvcn"
}