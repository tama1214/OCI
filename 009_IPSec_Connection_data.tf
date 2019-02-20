# ---- use variables defined in terraform.tfvars file

# --- IPSec connection data
data "oci_core_ipsec_config" "test_ip_sec_connection_device_config" {
    #Required
    ipsec_id = "${oci_core_ipsec.test_ip_sec_connection.id}"
}

#--- IPSec connection id
output "IPSec_connection_id" {
    value = "${data.oci_core_ipsec_config.test_ip_sec_connection_device_config.id}"
}
#--- IPSec connection Main Tunnel ip address
output "IPSec_connection_MainTunnel_ip" {
    value = "${data.oci_core_ipsec_config.test_ip_sec_connection_device_config.tunnels.0.ip_address }"
}
#--- IPSec connection Main Tunnel PSK
output "IPSec_connection_MainTunnel_PSK" {
    value = "${data.oci_core_ipsec_config.test_ip_sec_connection_device_config.tunnels.0.shared_secret}"
}
#--- IPSec connection Backup Tunnel ip address
output "IPSec_connection_BackupTunnel_ip" {
    value = "${data.oci_core_ipsec_config.test_ip_sec_connection_device_config.tunnels.1.ip_address }"
}
#--- IPSec connection Backup  Tunnel PSK
output "IPSec_connection_BackupTunnel_PSK" {
    value = "${data.oci_core_ipsec_config.test_ip_sec_connection_device_config.tunnels.1.shared_secret}"
}
