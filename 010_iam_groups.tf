# ---- use variables defined in terraform.tfvars file
variable "group_description"  {type = "list"}
variable "group_name"  {type = "list"}

# IAM Group configuration
resource "oci_identity_group" "test_group" {
    #Required
    compartment_id = "${var.tenancy_ocid}"
    count = "${length(var.group_name)}"
    name = "${var.group_name[count.index]}"
    count = "${length(var.group_description)}"
    description = "${var.group_description[count.index]}"

    #Optional
    defined_tags = "${merge(
                local.common_tags,
                map("${var.tag_namespace_key}.${var.tag_key}", "${var.tag_value}")
            )}"
}
