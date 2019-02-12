# ---- use variables defined in terraform.tfvars file

variable "custom_dns_servers" {type = "list"}
variable "doman_name" {type = "list"}
variable "dhcp_options_display_name" {}

# ---- DHCP Settings configuratin

resource "oci_core_dhcp_options" "test_dhcp_options" {
    #Required
    compartment_id = "${oci_identity_compartment.test_compartment.id}"
    options {
        type = "DomainNameServer"
        server_type = "CustomDnsServer"
        custom_dns_servers = "${var.custom_dns_servers}"
    }

    options {
        type = "SearchDomain"
        search_domain_names = "${var.doman_name}"
    }

    vcn_id = "${oci_core_vcn.test_vcn.id}"

    #Optional
    defined_tags = "${merge(
                local.common_tags,
                map("${var.tag_namespace_key}.${var.tag_key}", "${var.tag_value}")
            )}"
    display_name = "${var.dhcp_options_display_name}"
}
