resource "oci_core_subnet" "flip-pvt-subnet" {
  compartment_id = "ocid1.compartment.oc1..aaaaaaaa4pryefem6vfey3xpal4cdfi5bcnyv3x4kyssjaxcno5kt4alnoyq"
  vcn_id         = oci_core_vcn.flip-vcn.id

  cidr_block     = "10.0.2.0/24"
  display_name   = "flip-pvt-subnet"
  dns_label      = "privsubnet"

  prohibit_public_ip_on_vnic = true
}