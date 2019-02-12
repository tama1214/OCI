# ---- use variables defined in terraform.tfvars file

variable "drg_display_name" {}
variable "drg_attachment_display_name" {}

# ----  DRG configuration
resource "oci_core_drg" "test_drg" {
    #Required
    compartment_id = "${oci_identity_compartment.test_compartment.id}"

    #Optional
    defined_tags = {"netcloud01.GPCode" = "NC.ENG.IT.VPN.TEST"}
    display_name = "${var.drg_display_name}"
}

# ---- DRG attachment
resource "oci_core_drg_attachment" "test_drg_attachment" {
    #Required
    drg_id = "${oci_core_drg.test_drg.id}"
    vcn_id = "${oci_core_vcn.test_vcn.id}"

    #Optional
    display_name = "${var.drg_attachment_display_name}"
}
