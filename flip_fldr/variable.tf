variable "tenancy_ocid" {
    description = "The OCID of the tenancy."
    type        = string 
}

variable "user_ocid" {
    description = "The OCID of the user."
    type        = string 
}

variable "fingerprint" {
    description = "The fingerprint of the API key."
    type        = string 
}
variable "private_key_path" {
    description = "The file path of the private key."
    type        = string 
}
variable "region" {
    description = "The region to use for the provider."
    type        = string 
}
