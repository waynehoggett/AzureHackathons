# Challenge 1.3 - Deploy Azure Key Vault and store secrets

## Before you begin

* Check out the detailed setup guide [here](Setup/readme.md)
* Every challenge is dependant on the previous challenges, make sure you work through them in order
* Don't leave your team mates behind! See if anyone else needs a hand before you start a new challenge

## Overview

Before you can start to deploy virtual machines and many other Azure resources, you need a location to securely store any secrets, these secrets might be encryption keys, passwords or certificates.

Your third challenge is to deploy an Azure Key Vault and then add a secret to the key vault using either Azure PowerShell or Azure CLI.

Once you have finished this challenge you will have an understanding of:

* How to deploy a Key Vault
* How to grant access to the vault
* How to add secrets to the Vault using either the Azure CLI or PowerShell

## Objectives

1. Author a bicep template and use it to deploy an Azure Key Vault. The vault must have the following properties:
    * It must be enabled for deployment, template deployment and enabled for disk encryption
    * It must also use Azure RBAC for permission assignment

    You can use any *valid* name you like for the vault. The vault must be deployed to the `east us` region.

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
        <li>Can you add the vault resource to your existing template? When might you use a separate template?</li>
        <li>How can you automatically generate random/unique names in bicep? See the <a href="https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/template-functions-string#uniquestring" target="_blank">uniqueString()</a> function</li>
        <li>What is the <a href="https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/template-functions-string#substring" target="_blank">substring()</a> function?</li>
    </ul>
    </details>

1. Use Azure PowerShell or the Azure CLI to add a secure password to the vault (We'll use this password later as the administrator password on our virtual machines)

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
        <li>Do you have access to add secrets?</li>
        <li>What is the difference between the <code>Key Vault Contributor</code> role and the <code>Key Vault Secrets Officer</code> role?</li>
        <li>How would you choose to grant access to the vault?</li>
        <li>What is the principal of least privilege?</li>
        <li>Why do you think are we adding the secret using PowerShell or CLI, and not bicep?</li>
    </ul>
    </details>

## Success Criteria

You will have:
 - An Azure Key Vault deployed
 - A secret added that can be used as an administrator password on virtual machines
 - No secrets are stored in plain text
 - All resources must be deployed to the `east us` region

[< Previous Challenge](../1.2/readme.md) | [Next Challenge >](../1.4/readme.md)