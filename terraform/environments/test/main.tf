provider "azurerm" {
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  features {}
}
terraform {
  backend "azurerm" {
    subscription_id      = "df56a173-611b-429d-901a-af369d7d59b5"
    resource_group_name  = "Azuredevops"
    storage_account_name = "tfstate82767390"
    container_name       = "tfstate"
    key                  = "root.terraform.tfstate"
    access_key           = "IqVnH3kMn8tjN2bM0QbzMYXrx8cHRN1syhd/I/ky8RS3CnR9w63SNbgqeJ33iYzrXMwasM9RbSIw+AStnD2LqQ=="
  }
}

# module "resource_group" {
#   source               = "../../modules/resource_group"
#   resource_group       = var.resource_group
#   location             = var.location
# }
module "network" {
  source               = "../../modules/network"
  address_space        = var.address_space
  location             = var.location
  virtual_network_name = var.virtual_network_name
  application_type     = var.application_type
  resource_type        = "NET"
  resource_group       = var.resource_group
  address_prefix_test  = var.address_prefix_test
}

module "nsg-test" {
  source              = "../../modules/networksecuritygroup"
  location            = var.location
  application_type    = var.application_type
  resource_type       = "NSG"
  resource_group      = var.resource_group
  subnet_id           = module.network.subnet_id_test
  address_prefix_test = var.address_prefix_test
  depends_on          = [module.network]
}
module "appservice" {
  source           = "../../modules/appservice"
  location         = var.location
  application_type = var.application_type
  resource_type    = "AppService"
  resource_group   = var.resource_group
}
module "publicip" {
  source           = "../../modules/publicip"
  location         = var.location
  application_type = var.application_type
  resource_type    = "publicip"
  resource_group   = var.resource_group
}

module "vm" {
  source                 = "../../modules/vm"
  network_interface_name = var.virtual_network_interface_name
  subnet_id              = module.network.subnet_id_test
  public_ip_address_id   = module.publicip.public_ip_address_id
  vm_name                = var.vm_name
  location               = var.location
  resource_group_name    = var.resource_group
  admin_user             = var.admin_user
  admin_ssh_key          = var.admin_ssh_key
  depends_on             = [module.network]
}
