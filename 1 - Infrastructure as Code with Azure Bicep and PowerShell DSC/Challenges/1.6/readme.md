# Challenge 1.6 - Configure Security & Access

## Before you begin

* Check out the detailed setup guide [here](Setup/readme.md)
* Every challenge is dependant on the previous challenges, make sure you work through them in order
* Don't leave your team mates behind! See if anyone else needs a hand before you start a new challenge

## Overview

You're going to need to provide access to these virtual machines. There are two types of access you need to provide. You need to enable access for administrators to the virtual machines for maintenance and troubleshooting. You also need to provide access to the websites that will be hosted on the VMs.

In the final challenge for this round you need to configure access to the VMs and enhance the security of them at the network layer. How you do this is up to you.

This will be the most difficult challenge of this round.

Once you have finished this challenge you will have an understanding of:

* How to securely provide administrative access to virtual machines
* How to provide public access to the services hosted on the virtual machines

## Objectives

1. Author a bicep template to provide secure remote access to the virtual machines for administrative purposes and provide public access to the web server that will be running on the virtual machines. You can deploy additional resources to assist you in securing your servers.

    You should test logging on to your virtual machines as part of this challenge.
    You will not be able to test the website yet, as you haven't configured it yet, that will come in Round 2.

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
        <li>What is an Azure Public IP Address?</li>
        <li>What is Azure Bastion?</li>
        <li>What is a Network Security Group?</li>
        <li>What is an Application Gateway?</li>
        <li>Can Visual Studio Code make it easier?</li>
    </ul>
    </details>

## Success Criteria

You will have:
 - Secure remote access to your virtual machines on port 3389 and/or 5985/5986
 - Access to your virtual machines on port 80 and/or 443
 - No secrets are stored in plain text
 - All resources must be deployed to the `east us` region

[< Previous Challenge](../1.5/readme.md) | [Next Round >](../2.1/readme.md)