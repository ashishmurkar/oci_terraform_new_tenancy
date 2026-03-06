resource "oci_identity_compartment" "skillup_app" {
  compartment_id = var.tenancy_ocid
  name           = "skillup_app"
  description    = "Compartment for skillup application resources"

  enable_delete = true  # Allow deletion when managed by Terraform
  }

resource "oci_identity_compartment" "skillup_network" {
  compartment_id = oci_identity_compartment.skillup_app.id
  name           = "skillup_network"
  description    = "Compartment for skillup network resources"

  enable_delete = true  # Allow deletion when managed by Terraform
  }

  resource "oci_identity_compartment" "skillup_computeandstorage" {
  compartment_id = oci_identity_compartment.skillup_app.id
  name           = "skillup_computeandstorage"
  description    = "Compartment for skillup compute and storage resources"

  enable_delete = true  # Allow deletion when managed by Terraform
  }