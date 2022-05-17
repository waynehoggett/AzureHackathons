# Challenge 2.5 - Update your configuration

## Before you begin

* Check out the detailed setup guide [here](Setup/readme.md)
* Every challenge is dependent on the previous challenges, make sure you work through them in order
* Don't leave your team mates behind! See if anyone else needs a hand before you start a new challenge

## Overview

As part of a normal workload lifecycle, you might update the configuration to meet new requirements or fix issues. PowerShell DSC enables this using settings to configure how often configuration updates are checked for and how often configuration should be applied. This is done by configuring the Local Configuration Manager (LCM).

Your fourth challenge for this round is to configure the DSC extension on your VMs to update (pull) their configuration once a day and apply it every hour. You also want the servers to automatically reboot if required.

Once you have finished this challenge you will have an understanding of:

* How to configure LCM settings on a VM to pull a configuration from an automation account

## Objectives

1. Configure each of your nodes (VMs) to pull their configuration once per day, reboot if required and apply the configuration every hour

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
        <li>You can read all about the LCM settings in the DSC VM extension [here](https://docs.microsoft.com/en-us/azure/virtual-machines/extensions/dsc-template#default-configuration-script)</li>
    </ul>
    </details>

## Success Criteria

You will have:
 - Two nodes (VMs) configured to pull their configuration from the automation account
 - Both VMs have successfully applied the configuration
 - All configuration and infrastructure 'as code'
 - VMs configured to pull their configuration once per day, reboot if required and apply the configuration every hour

[< Previous Challenge](../2.3/readme.md)