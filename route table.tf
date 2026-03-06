resource "oci_core_route_table" "flip-rt" {
  compartment_id = "ocid1.compartment.oc1..aaaaaaaa4pryefem6vfey3xpal4cdfi5bcnyv3x4kyssjaxcno5kt4alnoyq"       # or use the same variable/reference you use elsewhere
  vcn_id         = oci_core_vcn.flip-vcn.id

  display_name   = "flip-rt"

}