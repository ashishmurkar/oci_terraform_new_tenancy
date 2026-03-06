resource "oci_identity_compartment" "flip_app" {
  compartment_id = "ocid1.tenancy.oc1..aaaaaaaagsgs3dyg4jrtn4jjnb33dqcbqfijfjq64vd2gaubi5j3cosg7uoq"
  name           = "flip_app"
  description    = "Compartment for flip application resources"
  
  enable_delete = true  # Allow deletion when managed by Terraform
  }

resource "oci_identity_compartment" "flip_network" {
  compartment_id = "ocid1.compartment.oc1..aaaaaaaabyjbyysdh3su2a2fgtdt5iuycmt4xxgvhalfrev3wlyi3e4ahpoa"
  name           = "flip_network"
  description    = "Compartment for flip network resources"

  enable_delete = true  # Allow deletion when managed by Terraform
  }

  resource "oci_identity_compartment" "flip_computeandstorage" {
  compartment_id = "ocid1.compartment.oc1..aaaaaaaabyjbyysdh3su2a2fgtdt5iuycmt4xxgvhalfrev3wlyi3e4ahpoa"
  name           = "flip_computeandstorage"
  description    = "Compartment for flip compute and storage resources"

  enable_delete = true  # Allow deletion when managed by Terraform
  }