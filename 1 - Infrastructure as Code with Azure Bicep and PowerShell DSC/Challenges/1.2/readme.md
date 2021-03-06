# Challenge 1.2 - Deploy a Virtual Network

## Before you begin

* Check out the detailed setup guide [here](Setup/readme.md)
* Every challenge is dependent on the previous challenges, make sure you work through them in order
* Don't leave your team mates behind! See if anyone else needs a hand before you start a new challenge

## Overview

Your second challenge is to deploy a virtual network using a bicep template, once you have finished this challenge you will have an understanding of:
* How to find Azure Resource Manager documentation
* How to look for examples of templates
* How to deploy a virtual network

## Objectives

1. Author a bicep template and use it to deploy a virtual network with the following properties:
    * Address space: `10.0.0.0/16`
    * Subnets:
        * 1 subnet with the address space: `10.0.0.0/24`

    You can use any *valid* name you like for the vnet and subnets. The virtual network must be deployed to the `east us` region.

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
        <li>Can Visual Studio Code make your job easier again? Type <code>res-</code> in a <code>.bicep</code> file to see</li>
        <li><a href="https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/resource-declaration?tabs=azure-powershell" target="_blank">Resource Declaration in Bicep</a></li>
        <li>Where can you find <a href="https://docs.microsoft.com/en-us/azure/templates/microsoft.network/virtualnetworks?tabs=bicep" target="_blank">ARM documentation</a>?</li>
        <li>What are <a href="https://azure.microsoft.com/en-us/resources/templates/?sort=DateUpdated" target="_blank">quick start templates</a>?</li>
    </ul>
    </details>

1. Update the template to include an additional subnet with the address range of `10.0.1.0/24` and deploy it to update the virtual network

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
        <li>What is <a href="https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/overview#why-choose-arm-templates#:~:text=idempotent" target="_blank">idempotency</a>?</li>
        <li>What do you think would happen if you changed the name of the vnet?</li>
    </ul>
    </details>

## Success Criteria

You will have:
 - At least two successful deployments of the virtual network
 - The first deployment will include one subnet and the following properties:
    - Address space: `10.0.0.0/16`
    - 1 subnet with the address space: `10.0.0.0/24`
 - The second deployment will include two subnets, with the following properties:
    - Address space: `10.0.0.0/16`
    - 2 subnet with the address spaces: `10.0.0.0/24` and `10.0.1.0/24`
 - All resources must be deployed to the `east us` region

[< Previous Challenge](../1.1/readme.md) | [Next Challenge >](../1.3/readme.md)
