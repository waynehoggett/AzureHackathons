# Challenge 2.1 - Use a Custom Script Extension

## Before you begin

* Check out the detailed setup guide [here](Setup/readme.md)
* Every challenge is dependent on the previous challenges, make sure you work through them in order
* Don't leave your team mates behind! See if anyone else needs a hand before you start a new challenge

## Overview

It's now time to configure the operating system and software on your servers. You could configure each one individually, but that doesn't scale well, and if you're like me, some will be slightly different. You want to get to a point where you can delete the server and recreate it from code.

In the first challenge for this round you need to configure IIS on each of the servers using a custom script extension.

Once you have finished this challenge you will have an understanding of:

* What Virtual Machine extensions are
* How to configure a custom script extension using a bicep template

## Objectives

1. Update your existing bicep template/s to deploy a custom script extension that installs IIS on the Virtual Machines you have deployed.

    You can use the script located here: [Install-IIS.ps1](Install-IIS.ps1)

    You should verify this has been completed by trying to access the web servers.

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
        <li>Can Visual Studio Code make it easier? with <code>res-vm-script-windows</code></li>
        <li>The <a href="https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/child-resource-name-type#outside-parent-resource">parent</a> property in bicep might be handy here</li>
    </ul>
    </details>

## Success Criteria

You will have:
 - IIS deployed with the default website
 - No secrets are stored in plain text
 - All resources must be deployed to the `east us` region

[< Previous Challenge](../1.6/readme.md) | [Next Round >](../2.2/readme.md)