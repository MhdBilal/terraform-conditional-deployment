# AWS Specific Variables
variable "aws_region" {
  description = "The AWS region to deploy the resources to"
}

variable "aws_creds_file" {
  description = "The full path to the .aws/credentials file"
}

variable "aws_profile" {
  description = "The profile in the credentials tile to use"
}

# Azure Specific Variables
variable "azure_location" {
  description = "The region of Azure resource group for this HitC Exercise"
  type = string
}

# Common Variables
variable "ssh_user" {
  description = "The local user account to create on the virtual machine"
  type = string
}

variable "ssh_pub_key_file" {
  description = "The path to the public SSH key associated with the local user account"
  type = string
}

variable "ssh_priv_key_file" {
  description = "The path to the private SSH key associated with the local user account"
  type = string
}
variable "deploy_resource" {
  description = "Set to true if you want to create the resource"
  type        = map(string)
}
