# Challenge 1.4 - Deploy a Windows Virtual Machine

## Before you begin

* Check out the detailed setup guide [here](Setup/readme.md)
* Every challenge is dependant on the previous challenges, make sure you work through them in order
* Don't leave your team mates behind! See if anyone else needs a hand before you start a new challenge

## Overview

Virtual Machines are the backbone of Azure Infrastructure as a Service (IaaS) and although many companies are moving to serverless, there is still a huge virtual machine footprint worldwide.

Your fourth challenge is to deploy a Windows Virtual Machine. Later on this virtual machine will be converted to a Web Server, so keep that in the back of your mind!

Once you have finished this challenge you will have an understanding of:

* How to deploy a virtual machine
* How a virtual machine depends on other resources like virtual networks, subnets and network interfaces
* How to access secrets that are stored in Key Vault

## Objectives

1. Author a bicep template and use it to deploy a Windows Virtual Machine. The VM must have the following properties:
    * Use a stored Key Vault secret for the administrator account password
    * Use `Windows Server 2016`
    * Be deployed to the `east us` region
    * Be a `B series` or `A series`

    You can use any *valid* name you like for the VM.
    You **do not** need to log on to the VM as part of this challenge.

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
        <li>How can you reference a Key Vault secret in a Bicep template? [Hint](https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/key-vault-parameter?tabs=azure-cli#reference-secrets-in-parameter-file)</li>
        <li>Some VM SKUs will be blocked by corporate policy, you need to select a valid SKU</li>
    </ul>
    </details>

## Success Criteria

You will have:
 - A Windows Virtual Machine deployed
 - An Administrator password set using a Key Vault stored secret
 - No secrets are stored in plain text
 - All resources must be deployed to the `east us` region

[< Previous Challenge](../1.3/readme.md) | [Next Challenge >](../1.5/readme.md)