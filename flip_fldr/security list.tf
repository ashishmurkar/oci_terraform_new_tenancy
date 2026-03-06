resource "oci_core_security_list" "flip-sl" {
  compartment_id = oci_identity_compartment.flip_network.id
  vcn_id         = oci_core_vcn.flip-vcn.id

  display_name = "flip-sl"

  # example ingress rules
  ingress_security_rules {
    protocol    = "6"                    # TCP
    source      = "0.0.0.0/0"            # allow from anywhere
    source_type = "CIDR_BLOCK"
    tcp_options {
      min = 22
      max = 22
    }
  }

  # example egress rules
  egress_security_rules {
    protocol    = "all"
    destination = "0.0.0.0/0"
    destination_type = "CIDR_BLOCK"
  }
}