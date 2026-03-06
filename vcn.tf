resource "oci_core_vcn" "flip-vcn" {
  compartment_id = "ocid1.compartment.oc1..aaaaaaaa4pryefem6vfey3xpal4cdfi5bcnyv3x4kyssjaxcno5kt4alnoyq"
  cidr_block     = "10.0.2.0/24"
  display_name   = "flip-vcn"
  dns_label      = "flipvcn"
}