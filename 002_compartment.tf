# ---- use variables defined in terraform.tfvars file

variable "compartment_description" {}
variable "compartment_name" {}


# compartment configuration
resource "oci_identity_compartment" "test_compartment" {
    #Required
    compartment_id = "${var.tenancy_ocid}"
    description = "${var.compartment_description}"
    name = "${var.compartment_name}"

    #Optional
    defined_tags = {"netcloud01.GPCode" = "NC.ENG.IT.VPN.TEST"}
}
