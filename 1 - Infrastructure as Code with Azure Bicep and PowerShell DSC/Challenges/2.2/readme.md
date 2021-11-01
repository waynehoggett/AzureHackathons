# Challenge 2.2 - Deploy an Automation Account

## Before you begin

* Check out the detailed setup guide [here](Setup/readme.md)
* Every challenge is dependant on the previous challenges, make sure you work through them in order
* Don't leave your team mates behind! See if anyone else needs a hand before you start a new challenge

## Overview

You can reference Desired State Configuration directly as a VM extension or you can use an Automation Account that simplifies the process of managing your configuration/s. An Automation Account also provides PowerShell automation via Runbooks, Update Management and Change Tracking along with Inventory. In this series of challenges we will focus on the Configuration Management service.

Your second challenge for this round is to deploy an Azure Automation Account. You also need to deploy a PowerShell module to the Automation Account.

Once you have finished this challenge you will have an understanding of:

* How to deploy an Azure Automation Account

## Objectives

1. Author a bicep template and use it to deploy an Automation Account

    You can use any *valid* name you like for the automation account. The automation account must be deployed to the `east us` region.

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
        <li>Can you add the automation account resource to your existing template? When might you use a separate template?</li>
    </ul>
    </details>

1.  Update your bicep template to deploy the `xPSDesiredStateConfiguration` module to the Automation Account

    The Nuget Package URL for `xPSDesiredStateConfiguration` 9.1.0 is: `https://psg-prod-eastus.azureedge.net/packages/xpsdesiredstateconfiguration.9.1.0.nupkg`

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
        <li>The <code>Microsoft.Automation/automationAccounts/modules</code> resource can help here</li>
    </ul>
    </details>


## Success Criteria

You will have:
 - An Azure Automation Account deployed
 - The xPSDesiredStateConfiguration module version 9.1.0 must be deployed to the Automation Account
 - All resources must be deployed to the `east us` region

[< Previous Challenge](../2.1/readme.md) | [Next Challenge >](../2.3/readme.md)