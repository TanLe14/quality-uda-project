variable "network_interface_name" {
  description = "The name of network interface"
  type = string
}

variable "location" {
  description = "The name of location"
  type = string
}

variable "resource_group_name" {
  description = "The name of resource group"
  type = string
}

variable "subnet_id" {
  description = "The id of resource group"
  type = string
}

variable "public_ip_address_id" {
  description = "The id of public ip address"
  type = string
}

variable "vm_name" {
  description = "The name of virtual machine"
  type = string
}

variable "admin_user" {
  description = "The name of admin user"
  type = string
}

variable "admin_ssh_key" {
  type = string
}