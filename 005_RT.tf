# ---- use variables defined in terraform.tfvars file

variable "route_table_route_rules_cidr_block" {}
variable "route_table_display_name" {}

# ---- Routing Table configuration
resource "oci_core_route_table" "test_route_table" {
    #Required
    compartment_id = "${oci_identity_compartment.test_compartment.id}"
    route_rules {
        #Required
        network_entity_id = "${oci_core_drg.test_drg.id}"

        #Optional
        cidr_block = "${var.route_table_route_rules_cidr_block}"
    }
    vcn_id = "${oci_core_vcn.test_vcn.id}"

    #Optional
    defined_tags = {"netcloud01.GPCode" = "NC.ENG.IT.VPN.TEST"}
    display_name = "${var.route_table_display_name}"
}
