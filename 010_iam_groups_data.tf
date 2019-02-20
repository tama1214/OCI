# ---- use variables defined in terraform.tfvars file

# IAM Group configuration data
data "oci_identity_groups" "test_groups" {
    #Required
    compartment_id = "${var.tenancy_ocid}"
}

#--- IAM Group_0 name
output "IAM_Group_0_name" {
    value = "${data.oci_identity_groups.test_groups.groups.0.name}"
    }

#--- IAM Group_1 name
output "IAM_Group_1_name" {
    value = "${data.oci_identity_groups.test_groups.groups.1.name}"
    }

#--- IAM Group_2 name
output "IAM_Group_2_name" {
      value = "${data.oci_identity_groups.test_groups.groups.2.name}"
    }

#--- IAM Group_3 name
output "IAM_Group_3_name" {
      value = "${data.oci_identity_groups.test_groups.groups.3.name}"
    }

#--- IAM Group_4 name
output "IAM_Group_4_name" {
      value = "${data.oci_identity_groups.test_groups.groups.4.name}"
    }

#--- IAM Group_5 name
output "IAM_Group_5_name" {
      value = "${data.oci_identity_groups.test_groups.groups.5.name}"
    }

  #--- IAM Group_6 name
output "IAM_Group_6_name" {
      value = "${data.oci_identity_groups.test_groups.groups.6.name}"
    }


  #--- IAM Group_7 name
output "IAM_Group_7_name" {
      value = "${data.oci_identity_groups.test_groups.groups.7.name}"
    }

    #--- IAM Group_8 name
output "IAM_Group_8_name" {
      value = "${data.oci_identity_groups.test_groups.groups.8.name}"
    }

output "IAM_Group_9_name" {
      value = "${data.oci_identity_groups.test_groups.groups.9.name}"
    }

output "IAM_Group_10_name" {
      value = "${data.oci_identity_groups.test_groups.groups.10.name}"
    }
    
