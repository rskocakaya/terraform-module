# Subnet Variables
variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
}

variable "subnet_CIDR" {
  description = "The CIDR block for the subnet"
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "subscription_id" {
  description = "The Azure subscription ID"
  default     = "**************" #DO NOT forget to change that
}

variable "rg_name" {
  description = "The name of the resource group"
  type        = string
  default     = "rg01-b1"  # Set the default name for the resource group
}

