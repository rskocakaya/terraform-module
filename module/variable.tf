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
  default     = "018d6d9b-67b7-47c4-a661-df8fd9bb0e64"
}

variable "rg_name" {
  description = "The name of the resource group"
  type        = string
  default     = "rg01-b1"  # Set the default name for the resource group
}

