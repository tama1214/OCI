
# ---- use variables defined in terraform.tfvars file
#variable "compartment_ocid" {}

# Output from tag_namespace
data "oci_identity_tag_namespaces" "test_tag_namespaces" {
    #Required
    compartment_id = "${var.compartment_ocid}"
}

# Compartment namespace name and id
output "tag_namespaces_name" {
    value = "${data.oci_identity_tag_namespaces.test_tag_namespaces.tag_namespaces.0.name}"
}
output "tag_namespace_id" {
    value = "${data.oci_identity_tag_namespaces.test_tag_namespaces.tag_namespaces.0.id}"
}

# Output from tag KEY
data "oci_identity_tags" "test_tags" {
    #Required
    tag_namespace_id = "${data.oci_identity_tag_namespaces.test_tag_namespaces.tag_namespaces.0.id}"
}

# TAG name and id
output "tag_key_id" {
  value = "${data.oci_identity_tags.test_tags.tags.0.id}"
}
output "tag_key_name" {
  value = "${data.oci_identity_tags.test_tags.tags.0.name}"
}

output "resource_defined_tags_key" {
  value = "${data.oci_identity_tag_namespaces.test_tag_namespaces.tag_namespaces.0.name}.${data.oci_identity_tags.test_tags.tags.0.name}"
}
