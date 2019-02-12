# ---- use variables defined in terraform.tfvars file
variable "cpe_ip_address" {}
variable "cpe_display_name" {}

# CPE  configuration
resource "oci_core_cpe" "test_cpe" {
    #Required
    compartment_id = "${oci_identity_compartment.test_compartment.id}"
    ip_address = "${var.cpe_ip_address}"

    #Optional
    defined_tags = "${merge(
                local.common_tags,
                map("${var.tag_namespace_key}.${var.tag_key}", "${var.tag_value}")
            )}"
    display_name = "${var.cpe_display_name}"
}
