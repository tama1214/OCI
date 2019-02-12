# ---- use variables defined in terraform.tfvars file

     variable "vcn_cidr_block" {}
     variable "vcn_display_name" {}

# ---- VCN configuration
        resource "oci_core_vcn" "test_vcn" {
            #Required
            cidr_block = "${var.vcn_cidr_block}"                                      # VCN cidr block
            compartment_id = "${oci_identity_compartment.test_compartment.id}"

            #Optional
            defined_tags = "${merge(
                        local.common_tags,
                        map("${var.tag_namespace_key}.${var.tag_key}", "${var.tag_value}")
                    )}"            
            display_name = "${var.vcn_display_name}"                                   # VCN name

          }
