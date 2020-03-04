//Creates python4dev compartment in root compartment.

resource "oci_identity_compartment" "python4dev" {
  name           = "python4dev"
  description    = "compartment to house python4dev resources"
  compartment_id = "${var.compartment_ocid}"
}
