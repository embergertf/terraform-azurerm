#
# Copyright 2024 Emmanuel Bergerat
#

# Created  on: #{CREATIONDATE}#
# Created  by: Emmanuel
# Modified on: 
# Modified by: 
# Overview:
#   This #{MODULEDISPLAYNAME}# module:
#   - ,
#   - .
#

# -
# - Generate base for the #{MODULEDISPLAYNAME}# Resource
# -
# https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-abbreviations
# https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules
module "#{MODULECODE}#_base" {
  # Terraform Cloud PMR use
  source  = "app.terraform.io/embergertf/base/azurerm"
  version = "~> 4.0"

  # Naming
  name_override = var.name_override
  naming_values = var.naming_values

  region_code     = var.region_code
  subsc_code      = var.subsc_code
  env             = var.env
  base_name       = var.base_name
  additional_name = var.additional_name
  iterator        = var.iterator
  owner           = var.owner
  additional_tags = var.additional_tags

  # Random
  add_random = var.add_random
  rnd_length = var.rnd_length

  # #{MODULEDISPLAYNAME}# specifics settings
  resource_type_code = "#{MODULECODE}#"
  max_length         = 90
  no_dashes          = false
}

# -
# - Create the #{MODULEDISPLAYNAME}# Resource
# -
resource "azurerm_xxx_yyy" "this" {
  name                = module.#{MODULECODE}#_base.name
  location            = module.#{MODULECODE}#_base.location
  resource_group_name = var.resource_group_name

  # #{MODULEDISPLAYNAME}# specifics


  tags = #{MODULECODE}#_base.tags
  lifecycle { ignore_changes = [tags["BuiltOn"]] }
}

