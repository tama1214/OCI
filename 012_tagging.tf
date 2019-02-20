variable "tag_namespace_key" {}
variable "tag_key" {}
variable "tag_value" {}

locals {
  //Put all common tags here
  common_tags = "${map("${var.tag_namespace_key}.${var.tag_key}","value")}"
}
