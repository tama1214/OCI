# ---- use variables defined in terraform.tfvars file

variable "policy_description" {}
variable "policy_name" {}

# ---- IAM Policy Configuration
resource "oci_identity_policy" "test_policy" {
    #Required
    compartment_id = "${var.tenancy_ocid}"
    description = "${var.policy_description}"
    name = "${var.policy_name}"
    statements = ["Allow group ${data.oci_identity_groups.test_groups.groups.7.name} to manage all-resources in compartment ${data.oci_identity_compartment.test_compartment.name}",
      "Allow group ${data.oci_identity_groups.test_groups.groups.9.name} to manage virtual-network-family in compartment ${data.oci_identity_compartment.test_compartment.name}",
      "Allow group ${data.oci_identity_groups.test_groups.groups.9.name} to manage instance-family in compartment ${data.oci_identity_compartment.test_compartment.name}",
      "Allow group ${data.oci_identity_groups.test_groups.groups.8.name} to manage database-family in compartment ${data.oci_identity_compartment.test_compartment.name}",
      "Allow group ${data.oci_identity_groups.test_groups.groups.8.name} to manage instance-family in compartment ${data.oci_identity_compartment.test_compartment.name}",
      "Allow group ${data.oci_identity_groups.test_groups.groups.8.name} to use virtual-network-family in compartment ${data.oci_identity_compartment.test_compartment.name}",
      "Allow group ${data.oci_identity_groups.test_groups.groups.8.name} to manage volume-family in compartment ${data.oci_identity_compartment.test_compartment.name}",
      "Allow group ${data.oci_identity_groups.test_groups.groups.8.name} to manage file-family in compartment ${data.oci_identity_compartment.test_compartment.name}",
      "Allow group ${data.oci_identity_groups.test_groups.groups.10.name} to read virtual-network-family in compartment ${data.oci_identity_compartment.test_compartment.name}",
      "Allow group ${data.oci_identity_groups.test_groups.groups.10.name} to read database-family in compartment ${data.oci_identity_compartment.test_compartment.name}",
      "Allow group ${data.oci_identity_groups.test_groups.groups.10.name} to read instance-family in compartment ${data.oci_identity_compartment.test_compartment.name}",
      "Allow group ${data.oci_identity_groups.test_groups.groups.10.name} to read load-balancers in compartment ${data.oci_identity_compartment.test_compartment.name}"]

    #Optional
    defined_tags = "${merge(
                local.common_tags,
                map("${var.tag_namespace_key}.${var.tag_key}", "${var.tag_value}")
            )}"
}
