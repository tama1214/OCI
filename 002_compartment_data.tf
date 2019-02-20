# ---- use variables defined in terraform.tfvars file

# compartment configuration
data "oci_identity_compartment" "test_compartment" {
    #Required
    id = "${oci_identity_compartment.test_compartment.id}"
}

#--- Compartment Name
output "Compartment_Name" {
    value = "${data.oci_identity_compartment.test_compartment.name}"
}
