resource "oci_core_security_list" "flip-sl" {
  compartment_id = "ocid1.compartment.oc1..aaaaaaaa4pryefem6vfey3xpal4cdfi5bcnyv3x4kyssjaxcno5kt4alnoyq"
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