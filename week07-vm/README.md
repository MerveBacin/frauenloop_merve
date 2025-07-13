# Week 07 – Deploy a Linux VM with SSH Key Access

## Description

This Terraform configuration deploys the following resources in Microsoft Azure:

- A resource group (`Week07ResourceGroup`)
- A virtual network (`week07-vnet`) with one subnet
- A network interface
- A Linux virtual machine (Ubuntu 18.04 LTS)

The VM is configured to allow SSH access using a public key (password login is disabled).

## SSH Key Access

SSH keys were generated locally using:

```bash
ssh-keygen -t rsa -b 4096 -f ~/.ssh/week07_key
