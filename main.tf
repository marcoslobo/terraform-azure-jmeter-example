# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

module "jmeter_cluster" {
  source = "github.com/marcoslobo/terraform-azure-jmeter-base"
  slave_ssh_public_key_file = "ssh/loadServer.pub"
  master_ssh_private_key_file = "ssh/loadServer"
  master_ssh_public_key_file = "ssh/loadServer.pub"
  jmx_script_file = "script.jmx"
  azure_auth = "my.azureauth"
  prefix = "jmt"
  location = "eastus"
  
}