# Challenge 1.1 - Deploy your first Bicep Template

## Before you begin

* Check out the detailed setup guide [here](Setup/readme.md)
* Every challenge is dependant on the previous challenges, make sure you work through them in order
* Don't leave your team mates behind! See if anyone else needs a hand before you start a new challenge

## Overview

Your first challenge is to deploy a bicep template, once you have finished this challenge you will have an understanding of:
* How to author a basic bicep template
* How to deploy that template

## Objectives

1. Author a bicep template that takes a `yourName`  parameter and outputs that name with a friendly welcome message

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
        <li>Create a <code>main.bicep</code> file and add the required parameter and output code</li>
        <li><a href="https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/parameters">Parameter declaration in Bicep</a></li>
        <li><a href="https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/outputs?tabs=azure-powershell">Outputs in Bicep</li>
        <li>What is string interpolation? More info <a href="https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/linter-rule-prefer-interpolation" target="_blank">here</a></li>
    </ul>
    </details>

1. Deploy the template with either the Azure CLI or Azure PowerShell
    <details>
    <summary> 💡 Tips and Tricks</summary>
    <ul>
        <li>Where are you going to deploy your template to? Resources in Azure are deployed to Resource Groups (some can be deployed to subscriptions and management groups), you will need to create a Resource Group</li>
        <li>Deploy using <a href="https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-powershell?view=azps-6.5.0#deploy-local-template" target="_blank">Azure Powershell</a></li>
        <li>Deploy using the <a href="https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-cli?toc=%2Fcli%2Fazure%2Ftoc.json&bc=%2Fcli%2Fazure%2Fbreadcrumb%2Ftoc.json#deploy-local-template" target="_blank">Azure CLI</a></li>
    </ul>
    </details>

## Success Criteria

You will have a bicep template that takes a `yourName` parameter and when deployed that template will return a welcome message with the name included in the output.

[Next Challenge >](../1.2/readme.md)
