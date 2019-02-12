# -- Tenant Information
   tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaayatoimpt7mrivhahmvrukyrramonxanmwiyciihnvojorcn7p5ea"
   user_ocid = "ocid1.user.oc1..aaaaaaaa6bl7gigpxt2zn7u653335d2znk42gz5aye4adzgcno4dfrxhwwdq"
   fingerprint = "10:cb:53:71:de:af:ad:cb:5a:81:00:60:1a:73:bf:06" #PRIVATE KEY FINGERPRINT!!!!!
   private_key_path = "C:/TERRAFORM/key.oci/oci_api_key.pem"
   #compartment_ocid = "ocid1.compartment.oc1..aaaaaaaaccvzbobc44avlz5xqhovddow66zktk7gzwtecgb33brm7t66xxqq"
   region = "us-ashburn-1"

# -- VCN
  vcn_cidr_block = "172.31.0.0/16"
  vcn_display_name = "vcn-oracle-NEW-VCN-ashburn-1"

# -- Subnets
  subnet_display_name  = ["test-subnet-172.31.1.0/24", "test-subnet-172.31.2.0/24", "test-subnet-172.31.3.0/24"]
  subnet_cidr_block = ["172.31.1.0/24", "172.31.2.0/24", "172.31.3.0/24"]
  subnet_availability_domain_ad = ["tLwk:US-ASHBURN-AD-1", "tLwk:US-ASHBURN-AD-2", "tLwk:US-ASHBURN-AD-3"]

# -- RT
  route_table_route_rules_cidr_block = "0.0.0.0/0"
  route_table_display_name = "TEST-RT-1"

# -- DRG
 drg_display_name = "test-DRG"
 drg_attachment_display_name = "test-DRG-attachment"

# -- CPE
cpe_ip_address = "1.1.1.1"
cpe_display_name = "test-CPE"

# -- IPSec connection
ip_sec_connection_static_routes = ["0.0.0.0/0"]
ip_sec_connection_display_name = "Test-IPSec-Connection"

# -- DHCP
custom_dns_servers = [ "10.112.1.1", "10.112.1.1" ]
doman_name = ["netcracker.com"]
dhcp_options_display_name = "TEST-DHCP"

# -- Compartment
compartment_description = "temp_TEST_compartment"
compartment_name = "TEST12-compartment"

# -- IAM groups
group_description = ["Test_NC_Admins IAM Group NC_Admins", "Test_NC_NetwAdmins IAM Group NC_NetwAdmins", "Test_NC_EnvAdmins IAM Group NC_EnvAdmins", "Test_NC_Testers IAM Group NC_Testers"]
group_name = ["Test_NC_Admins", "Test_NC_NetwAdmins", "Test_NC_EnvAdmins", "Test_NC_Testers"]

# -- IAM Policyes
policy_description = "Test policy descryption"
policy_name = "Test-Policy"

# -- TAGs
tag_namespace_key = "netcloud01"
tag_key = "GPCode"
tag_value = "NC.ENG.IT.VPN.TEST"
