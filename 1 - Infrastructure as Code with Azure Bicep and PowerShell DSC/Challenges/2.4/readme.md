# Challenge 2.4 - Apply your configuration to your Windows VMs

## Before you begin

* Check out the detailed setup guide [here](Setup/readme.md)
* Every challenge is dependant on the previous challenges, make sure you work through them in order
* Don't leave your team mates behind! See if anyone else needs a hand before you start a new challenge

## Overview

Now it's time for the rubber to hit the road. You've compiled your configuration and it's waiting for a server to pull the configuration and apply it.

Your fourth challenge for this round is to register your virtual machines with the automation account so they can pull their configuration.

Once you have finished this challenge you will have an understanding of:

* How to configure a server to pull a configuration from an automation account
* How to trigger the application of the configuration on a node
* How to monitor the configuration compliance

## Objectives

1. Configure each of your nodes (VMs) to pull their configuration from the automation account

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
        <li>You can do this with PowerShell/CLI or with Bicep - which will you choose?</li>
        <li>You can read all about the DSC VM extension [here](https://docs.microsoft.com/en-us/azure/virtual-machines/extensions/dsc-template)</li>
    </ul>
    </details>

1. Ensure your configuration is applied successfully

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
        <li>Which cmdlets can you run on your VMs to manually pull a new configuration or start applying the configuration (See below)?</li>
        <li><a href="https://docs.microsoft.com/en-us/powershell/module/psdesiredstateconfiguration/update-dscconfiguration?view=powershell-5.1">Update-DscConfiguration</a> checks and *pulls* a new configuration if it exists</li>
        <li><a href="https://docs.microsoft.com/en-us/powershell/module/psdesiredstateconfiguration/start-dscconfiguration?view=powershell-5.1">Start-DscConfiguration</a> applies an existing configuration that has been *pulled*</li>
        <li>Where in the Azure Portal can you view configuration compliance?</li>
    </ul>
    </details>

## Success Criteria

You will have:
 - Two nodes (VMs) configured to pull their configuration from the automation account
 - Both VMs have successfully applied the configuration
 - All configuration and infrastructure 'as code'

[< Previous Challenge](../2.3/readme.md) | [Next Challenge >](../2.5/readme.md)