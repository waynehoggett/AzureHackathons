# Challenge 2.2 - Deploy an Automation Account

## Before you begin

* Check out the detailed setup guide [here](Setup/readme.md)
* Every challenge is dependant on the previous challenges, make sure you work through them in order
* Don't leave your team mates behind! See if anyone else needs a hand before you start a new challenge

## Overview

You can reference Desired State Configuration directly as a VM extension or you can use an Automation Account that simplifies the process of managing your configuration/s. An Automation Account also provides PowerShell automation via Runbooks, Update Management and Change Tracking along with Inventory.

Your second challenge for this round is to deploy an Azure Automation Account.

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

## Success Criteria

You will have:
 - An Azure Automation Account deployed
 - All resources must be deployed to the `east us` region

[< Previous Challenge](../2.1/readme.md) | [Next Challenge >](../2.3/readme.md)