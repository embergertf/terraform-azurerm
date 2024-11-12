# #{MODULEDISPLAYNAME}# module

## Overview

This #{MODULEDISPLAYNAME}# module provides the following features:

## Notes

## Example

```yaml
module "rg_name" {
  # Local use
  #source = "../../terraform-azurerm-base"

  # Terraform Cloud/Enterprise use
  source  = "app.terraform.io/embergertf/#{MODULECODE}#/azurerm"
  version = "~> 1.0"

  # Naming convention
  naming_values = module.rg.naming_values
  # Key vault settings
  resource_group_name = module.rg.resource_group_name
  additional_tags = var.#{MODULECODE}#_additional_tags
}

```
