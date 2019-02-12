# ---- use variables defined in terraform.tfvars file

     variable "subnet_cidr_block" {type = "list"}                               # set the variable type "List"
     variable "subnet_availability_domain_ad" {type = "list"}                   # set the variable type "List
     variable "subnet_display_name" {type = "list"}                             # set the variable type "List"

  # ---- Subnets configuration
        resource "oci_core_subnet" "test_subnet" {
          #Required
          count = "${length(var.subnet_availability_domain_ad)}"
          availability_domain = "${var.subnet_availability_domain_ad[count.index]}"  # Specify in which AD network should be created
          count = "${length(var.subnet_cidr_block)}"                            #
          cidr_block = "${var.subnet_cidr_block[count.index]}"
          compartment_id = "${oci_identity_compartment.test_compartment.id}"
          vcn_id = "${oci_core_vcn.test_vcn.id}"

          #Optional
          defined_tags = "${merge(
                      local.common_tags,
                      map("${var.tag_namespace_key}.${var.tag_key}", "${var.tag_value}")
                  )}"
          dhcp_options_id = "${oci_core_dhcp_options.test_dhcp_options.id}"
          count = "${length(var.subnet_display_name)}"
          display_name = "${var.subnet_display_name[count.index]}"
          route_table_id = "${oci_core_route_table.test_route_table.id}"
      }
