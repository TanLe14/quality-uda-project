# Azure GUIDS
variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}

# Resource Group/Location
variable "location" {}
variable "resource_group" {}
variable "application_type" {}

# Network
variable virtual_network_name {}
variable address_prefix_test {}
variable address_space {}

#VM
variable "virtual_network_interface_name" {}
variable "vm_name" {}
variable "admin_user" {}
variable "admin_ssh_key" {}
variable "access_key" {}

