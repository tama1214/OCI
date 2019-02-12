# ---- use variables defined in terraform.tfvars file
variable "ip_sec_connection_static_routes" {type = "list"}
variable "ip_sec_connection_display_name" {}

# IPSec Connection configuration
resource "oci_core_ipsec" "test_ip_sec_connection" {
    #Required
    compartment_id = "${oci_identity_compartment.test_compartment.id}"
    cpe_id = "${oci_core_cpe.test_cpe.id}"
    drg_id = "${oci_core_drg.test_drg.id}"
    static_routes = "${var.ip_sec_connection_static_routes}"

    #Optional
    defined_tags = {"netcloud01.GPCode" = "NC.ENG.IT.VPN.TEST"}
    display_name = "${var.ip_sec_connection_display_name}"
}
