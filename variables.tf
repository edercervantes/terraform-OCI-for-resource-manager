
########################COMPUTE########################
variable "instance_display_name"{
    default = "AlphaOffice" //Does not have to be unique. Avoid entering confidential information.
}

variable "instance_shape" {
  default = "VM.Standard2.1"
}

########################DATABASE########################
variable "autonomous_database_display_name" {
    default = "AlphaOffice"
}
variable "autonomous_database_db_name" {
    default = "orcl4py"
}
variable "autonomous_database_admin_password" {
    default = "a1phaOffice1_" //The password must be between 12 and 30 characters long, and must contain at least 1 uppercase, 1 lowercase, and 1 numeric character. It cannot contain the double quote symbol (") or the username "admin", regardless of casing.
}

########################NETWORKING########################
variable "vcn_display_name" {
    default = "py4devvcn"
}
variable "internet_gateway_display_name" {
  default = "internet_gateway"
}

variable "subnet_display_name" {
    default = "Default Subnet"
}
data "oci_identity_availability_domain" "ad" {
  compartment_id = "${var.tenancy_ocid}"
  ad_number = 2
}

########################OBJECT_STORAGE########################
variable "bucket_name" {
    default = "py4dev"
}
variable "obj_store_namespace"{
    default = "default_value"
}