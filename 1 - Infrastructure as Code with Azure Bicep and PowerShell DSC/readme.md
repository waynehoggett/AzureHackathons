# 1 - Azure Infrastructure as Code

## Introduction

Continuous Integration and Continuous Delivery (CI/CD) are are an important capability in any DevOps team. Continuous Delivery is achieved by using practices and processes that include (but are not limited to) the following:

* Infrastructure as Code (IaC)
* Configuration Management

Once you start embracing DevOps, you will start to build out your practices and processes, but starting with Infrastructure as Code (IaC) and Configuration Management is as good a place as any. Once you start, you soon add source control, secrets management, and a release pipeline, and you’ll be deploying to Infrastructure as a Service (IaaS), Platform as a Service (PaaS) and more!

But today, let’s get started with Infrastructure as Code and Configuration Management in the hope that it will wet your appetite and you’ll want more!


## Before you begin

Check out the detailed setup guide [here](Setup/readme.md).

## Challenges

The challenges in this hack are broken up into two sections. The first section focuses on Infrastructure as Code (IaC) using Azure Bicep. The second section focuses on Configuration Management with DSC.

### Round 1 - Infrastructure as Code with Azure Bicep

In round one you'll take on a series of Infrastructure as Code (IaC) challenges. IaC is an important part of DevOps, it helps with collaboration, automation, CI/CD and visibility. IaC helps you deploy faster and more consistently. You might have heard of the term treat servers like cattle not pets - Don't pet each one individually, herd them all as a group.

* [**Challenge 1.1 - Deploy your first Bicep Template**](Challenges/1.1/readme.md)

    Write your first bicep template and deploy it

* [**Challenge 1.2 - Deploy a Virtual Network**](Challenges/1.2/readme.md)
    
    Deploy a Virtual Network

* [**Challenge 1.3 - Deploy Azure Key Vault**](Challenges/1.3/readme.md)
    
    Deploy a Key Vault and store some secrets

* [**Challenge 1.4 - Deploy a Windows Virtual Machine**](Challenges/1.4/readme.md)
    
    Deploy a Windows Virtual Machine

* [**Challenge 1.5 - Deploy Highly Available Virtual Machines**](Challenges/1.5/readme.md)

    Deploy two highly-available Virtual Machines

* [**Challenge 1.6 - Configure Security and Access**](Challenges/1.6/readme.md)
   
    Enhance the security of your infrastructure and provide remote access

### Round 2 - Configuration as Code with PowerShell DSC

In round two, you'll take on a series of Configuration as Code (CaC) challenges. CaC solves many of the same problems that Infrastructure as Code solves, but it can have some other advantages too. Firstly, CaC makes automation, collaboration, security and documentation easier, but where it often differs from Infrastructure as Code is in combating configuration drift. Many Configuration Management tools can automatically correct configuration issues without human input, by bringing them back into compliance. Combating configuration drift saves you time and the company money.

* [**Challenge 2.1 - Use a Custom Script Extension**](Challenges/2.1/readme.md)

    Apply basic configuration with the custom script extension

* [**Challenge 2.2 - Deploy an Automation Account**](Challenges/2.2/readme.md)

    Deploy an Azure Automation Account

* [**Challenge 2.3 - Deploy your first configuration**](Challenges/2.3/readme.md)

    Author and deploy your first configuration

* [**Challenge 2.4 - Apply your configuration to your Windows VMs**](Challenges/2.4/readme.md)

    Apply your first to your virtual machines

* [**Challenge 2.5 - Configure the Local Configuration Manager (LCM)**](Challenges/2.4/readme.md)

    Configure the Local Configuration Manager (LCM)
