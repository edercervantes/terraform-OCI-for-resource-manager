//Creates Demo compartment in root, then python4dev in Demo compartment.
resource "oci_identity_compartment" "Demo" {
    compartment_id = "${var.compartment_ocid}"
    description = "compartment for demo resources"
    name = "Demo"
}

resource "oci_identity_compartment" "python4dev" {
  name           = "python4dev"
  description    = "compartment to house python4dev resources"
  compartment_id = "${oci_identity_compartment.Demo.id}"
}
