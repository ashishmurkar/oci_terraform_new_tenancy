resource "oci_core_subnet" "flip-pvt-subnet" {
  compartment_id = oci_identity_compartment.flip_network.id
  vcn_id         = oci_core_vcn.flip-vcn.id

  cidr_block     = "10.0.2.0/24"
  display_name   = "flip-pvt-subnet"
  dns_label      = "privsubnet"

  prohibit_public_ip_on_vnic = true
}