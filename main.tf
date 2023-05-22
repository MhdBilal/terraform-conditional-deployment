module "aws" {
  aws_region = var.aws_region
  aws_creds_file = var.aws_creds_file
  aws_profile = var.aws_profile
  ssh_pub_key_file = var.ssh_pub_key_file
  ssh_priv_key_file = var.ssh_priv_key_file
  source = "./modules/aws"
# Deploy conditionally based on deploy_resource variable
  count = var.deploy_resource[local.workspace] == true ? 1 : 0
}

module "azure" {
  azure_location = var.azure_location
  ssh_user = var.ssh_user
  ssh_pub_key_file = var.ssh_pub_key_file
  ssh_priv_key_file = var.ssh_priv_key_file
  source = "./modules/azure"
# Deploy conditionally based on deploy_internal_lb variable
  count = var.deploy_resource[local.workspace] == true ? 1 : 0
}