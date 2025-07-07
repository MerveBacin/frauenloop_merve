# Week 05 – VNet with Two Subnets

This Terraform configuration provisions:
- An Azure resource group
- A virtual network (`week05-vnet`) with address space `10.0.0.0/16`
- Two subnets:
  - `subnet-1` (10.0.1.0/24)
  - `subnet-2` (10.0.2.0/24)
