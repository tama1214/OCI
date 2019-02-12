
# ---- use variables defined in terraform.tfvars file
variable "tag_namespace_description" {}
variable "tag_namespace_name" {}
variable "tag_description" {}
variable "tag_name" {}
variable "tag_is_cost_tracking" {}
variable "compartment_ocid" {}



# TAG namespace configuration
resource "oci_identity_tag_namespace" "test_tag_namespace" {
    #Required
    compartment_id = "${var.compartment_ocid}"
    description = "${var.tag_namespace_description}"
    name = "${var.tag_namespace_name}"

    #Optional
    is_retired = false
}


# TAG configuration
resource "oci_identity_tag" "test_tag" {
  #Required
  description = "${var.tag_description}"
  name = "${var.tag_name}"
  tag_namespace_id = "${oci_identity_tag_namespace.test_tag_namespace.id}"

    #Optional
    is_cost_tracking = "${var.tag_is_cost_tracking}"
    is_retired = false


}
