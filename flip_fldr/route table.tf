resource "oci_core_route_table" "flip-rt" {
  compartment_id = oci_identity_compartment.flip_network.id       # or use the same variable/reference you use elsewhere
  vcn_id         = oci_core_vcn.flip-vcn.id

  display_name   = "flip-rt"

}