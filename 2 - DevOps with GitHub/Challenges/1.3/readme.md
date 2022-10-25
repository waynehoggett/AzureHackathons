# Challenge 1.3 - Infrastructure as Code (IaC)

👉 Don't leave your teammates behind! See if anyone else needs a hand before you start a new challenge.

## Overview

Now that we have some code, we need an environment to deploy it to! The term Infrastructure as Code (IaC) refers to using templates (code) to repeatedly and consistently create the dev, test, prod (infrastructure) environments. We can automate the process of deploying the Azure services we need with an Azure Resource Manager (ARM) template. 

<br />
<details>
<summary>📚 Additional Reading</summary>
<ul>
<li><a href="https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-overview">Azure Resource Manager overview</a></li>
<li><a href="https://docs.microsoft.com/en-us/azure/azure-resource-manager/how-to-create-template">Create Azure Resource Manager template</a></li>
<li><a href="https://docs.microsoft.com/en-us/azure/devops/learn/what-is-infrastructure-as-code">What is Infrastructure as Code?</a></li>
<li><a href="https://docs.github.com/en/free-pro-team@latest/actions/learn-github-actions/introduction-to-github-actions">Introduction to GitHub Actions</a></li>
<li><a href="https://docs.github.com/en/actions/using-workflows/events-that-trigger-workflows#workflow_dispatch">Manually trigger a workflow</a></li>
<li><a href="https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-github-actions">Deploy Azure Resource Manager templates by using GitHub Actions</a></li>
<li><a href="https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-cli#parameters">Overriding ARM template parameters</a></li>
</ul>
</details>
<br />

## Objectives

We will use GitHub Actions to automate the deployment of our Azure infrastructure. For our application, we will deploy 3 environments: `dev`, `test` and `prod`. Each environment will have its own Web App, however all of our environments will share a single Resource Group, App Service Plan, Application Insights instance, and Azure Container Registry. NOTE: in real deployments, you will likely not share all of these resources.

1. Review the ARM template. Notice how it defines a number of parameters and uses them to create the Resource Group, App Service Plan, Web App, Application Insights, and Azure Container Registry. 

2. Update the parameters section of the ARM template, replacing all instances of `<prefix>` with a unique lowercase 5 letter name. The resulting name needs to be globally unique to correctly provision resources. Notice the `webAppName` parameter on line #6 - you will override this placeholder value later when you call the ARM template.

3. Create a GitHub workflow (`deploy.yml`) that runs manually (*not* triggered by a push or pull request).

4. Configure your workflow to accomplish the following:

    - Use a service principal to authenticate to Azure
    - Use the "Deploy Azure Resource Manager (ARM) Template" action to call your ARM template in your repo

5. Manually run your workflow. When your workflow completes successfully, go to the Azure portal to see the `dev` environment. 

If everything worked, we are going to call the ARM template again, but override the `webAppName` parameter in the ARM template.

6. Create an environment variable called `targetEnv` in your workflow and set the *value* to the `webAppName` in your ARM template, BUT, replace the "dev" with "test" (i.e., 'myapp-devops-test').

7. Update your "Deploy Azure Resource Manager (ARM) Template" action to call your ARM template in your repo and override the `webAppName` paramater with the new `targetEnv` environment variable.

8. Rerun the workflow. When your workflow completes successfully, go to the Azure portal to see the new `test` App Service. 

9. If everything worked, replace the "test" in your `targetEnv` with "prod" and rerun the workflow. When your workflow completes successfully, go to the Azure portal to see the new `prod` App Service. 

You should see all three environments in Azure.

## Success Criteria

- Your `deploy.yaml` workflow completes without any errors and overrides the `webAppName` parameter when calling the ARM template.
- Your resource group contains 6 resources: 3 App Services (dev, test, prod), 1 Application Insights, 1 App Service plan and 1 Container registry. 

Your YAML file should look similar to:

```yaml
on:
  push

env:
  targetEnv: Dev

name: Azure ARM
jobs:
  build-and-deploy:
    runs-on: ubuntu-latest
    steps:
    # Checkout code
    - uses: actions/checkout@main

      # Log into Azure
    - uses: azure/login@v1
      with:
        creds: ${{ secrets.AZURE_CREDENTIALS }}

      # Deploy ARM template
    - name: Run ARM deploy
      uses: azure/arm-deploy@v1
      with:
        subscriptionId: ${{ secrets.AZURE_SUBSCRIPTION }}
        resourceGroupName: ${{ secrets.AZURE_RG }}
        template: ./ARM-Templates/container-webapp-template.json
        parameters: webAppName=WTHApp-${{ env.targetEnv }}
```


[< Previous Challenge](../1.2/readme.md) | [Next Challenge >](../1.4/readme.md)

