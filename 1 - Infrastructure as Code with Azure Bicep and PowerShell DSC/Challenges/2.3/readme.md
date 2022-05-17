# Challenge 2.3 - Deploy your first configuration

## Before you begin

* Check out the detailed setup guide [here](Setup/readme.md)
* Every challenge is dependent on the previous challenges, make sure you work through them in order
* Don't leave your team mates behind! See if anyone else needs a hand before you start a new challenge

## Overview

When using Desired State Configuration with an Automation Account, you author your configurations on your workstation and then send your configuration to the Automation Account to be *Compiled*.

Your third challenge for this round is to author a configuration and send it to be your automation account to be compiled and published. In the following challenge, you will configure your VMs to *pull* their configuration from your automation account.

Once you have finished this challenge you will have an understanding of:

* How to author a configuration using Desired State Configuration
* How to push your configuration to an automation account so it can be published

## Objectives

1. Compose your configuration to meet the following requirements:
     * Install IIS
     * Download and unzip the following Web App to the IIS Default Site Directory: [SampleWebApp.zip](SampleWebApp.zip)

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
        <li>Can VSCode make your job easier? <code>ex-DSC config</code></li>
        <li>Should you configure more than one *node* in your configuration</li>
        <li>Which DSC resource can be used to download a remote file? <a href="https://github.com/dsccommunity/xPSDesiredStateConfiguration/blob/main/source/Examples/Resources/xRemoteFile/1-xRemoteFile_DownloadFile_Config.ps1">xRemoteFile</a> will help</li>
        <li>Which DSC resource can be used to unzip an archive? <a href="https://github.com/dsccommunity/xPSDesiredStateConfiguration/blob/main/source/Examples/Resources/xArchive/1-xArchive_ExpandArchiveChecksumAndForce_Config.ps1">xArchive</a></li>
    </ul>
    </details>

1. Use Azure PowerShell to submit your configuration to the automation account for compilation

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
        <li>The cmdlets from Az.Automation (included with Azure PowerShell) will help here</li>
        <li>You're actually importing the configuration, so look for commands like that</li>
    </ul>
    </details>

1. Use Azure PowerShell to start a compilation job for your configuration

<details>
<summary>💡 Tips and Tricks</summary>
<ul>
    <li>Where/how can you check the status of the compilation job?</li>
</ul>
</details>

## Success Criteria

You will have:
 - A compiled configuration for each node (one per VM)
 - No secrets are stored in plain text
 - All resources must be deployed to the `east us` region

[< Previous Challenge](../2.2/readme.md) | [Next Challenge >](../2.4/readme.md)