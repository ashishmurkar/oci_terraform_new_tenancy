resource "oci_identity_compartment" "flip_app" {
  compartment_id = var.tenancy_ocid
  name           = "flip_app"
  description    = "Compartment for flip application resources"
  
  enable_delete = true  # Allow deletion when managed by Terraform
  }

resource "oci_identity_compartment" "flip_network" {
  compartment_id = oci_identity_compartment.flip_app.id
  name           = "flip_network"
  description    = "Compartment for flip network resources"

  enable_delete = true  # Allow deletion when managed by Terraform
  }

  resource "oci_identity_compartment" "flip_computeandstorage" {
  compartment_id = oci_identity_compartment.flip_app.id
  name           = "flip_computeandstorage"
  description    = "Compartment for flip compute and storage resources"

  enable_delete = true  # Allow deletion when managed by Terraform
  }