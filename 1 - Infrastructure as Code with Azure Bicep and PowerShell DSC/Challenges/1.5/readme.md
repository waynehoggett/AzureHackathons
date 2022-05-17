# Challenge 1.5 - Deploy Highly Available Virtual Machines

## Before you begin

* Check out the detailed setup guide [here](Setup/readme.md)
* Every challenge is dependent on the previous challenges, make sure you work through them in order
* Don't leave your team mates behind! See if anyone else needs a hand before you start a new challenge

## Overview

Deploying a service to a single virtual machine creates a single point of failure. If the Virtual Machine fails or anything that makes that Virtual Machine function fails, this will lead to an outage. Azure will provide a higher uptime guarantee if you deploy at least 2 Virtual Machines and you know that in turn you can provide a higher uptime guarantee back to your users.

Your fifth challenge is to deploy two Windows Virtual Machine and increase the availability of the service that these virtual machines provide.

Once you have finished this challenge you will have an understanding of:

* How to deploy multiple virtual machines
* How to increase the availability of services by deploying multiple VM instances

## Objectives

1. Author a bicep template and use it to deploy two identical Windows Virtual Machines. The Microsoft SLA for the Virtual Machines must be at least 99.99%. The VMs must have the following properties:
    * Use a stored Key Vault secret for the administrator account password
    * Use `Windows Server 2016`
    * Be deployed to the `east us` region
    * Be a `B series` or `A series` (Use either Standard_A2_v2 or Standard_B2s)

    You can use any *valid* name you like for the VM.
    You **do not** need to log on to the VM as part of this challenge.

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
        <li>What is the difference between an Availability Set and an Availability Zone?</li>
        <li>Does the type of disk you choose have any impact on the Microsoft SLA?</li>
        <li>What is a bicep module?</li>
        <li>If you use a module - you're likely going to want to know about the <a href="https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/key-vault-parameter?tabs=azure-cli#use-getsecret-function">getSecret()</a> function</li>
    </ul>
    </details>

## Success Criteria

You will have:
 - Two Windows Virtual Machines deployed
 - A Microsoft SLA of 99.99%
 - An Administrator password set using a Key Vault stored secret
 - No secrets are stored in plain text
 - All resources must be deployed to the `east us` region

[< Previous Challenge](../1.4/readme.md) | [Next Challenge >](../1.6/readme.md)