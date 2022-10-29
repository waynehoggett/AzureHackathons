# Challenge 1.3 - Infrastructure as Code (IaC)

👉 Don't leave your teammates behind! See if anyone else needs a hand before you start a new challenge.

## Overview

Now that we have some code, we need an environment to deploy it to! The term Infrastructure as Code (IaC) refers to using templates (code) to repeatedly and consistently create the dev, test, prod (infrastructure) environments. We can automate the process of deploying the Azure services we need with an Azure Resource Manager (ARM) template. 

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

## Objectives

We will use GitHub Actions to automate the deployment of our Azure infrastructure. For our application, we will deploy 3 environments: `dev`, `test` and `prod`. Each environment will have its own Web App, however all of our environments will share a single Resource Group, App Service Plan, Application Insights instance, and Azure Container Registry. 

🗈 NOTE: In real deployments, all your environments will likely not share these resources.

1. Review the ARM template. Notice how it defines a number of parameters and uses them to create the Resource Group, App Service Plan, Web App, Application Insights, and Azure Container Registry. 

2. Update the parameters section of the ARM template, replacing all instances of `<prefix>` with a unique lowercase 5 letter name. The resulting name needs to be globally unique to correctly provision resources. 

Notice the `webAppName` parameter on line #6 - you will override this placeholder value later when you call the ARM template.

3. Create a GitHub workflow (`deploy.yml`) that runs manually (*not* triggered by a push or pull request).

  <details>
  <summary>💡 Tips and Tricks</summary>
  To create a workflow:
  <ol>
  <li>In your repository, select <strong>Actions</strong></li>
  <li>Search for <strong>Manual workflow</strong> and select <strong>Configure</strong></li>
  <li>Provide a name for your workflow, with the <code>name:</code> property</li>
  <li>To make your workflow run manually, use the following code:<br />
    <code>on:</code><br />
    <code> workflow_dispatch:</code><br />
  </li>
  </ol>
  <ul>
  <li>Refer to the <strong>documentation</strong> tab of your workflow for more details</li>
  <li>Any lines starting with a <code>#</code> are comments, you can read them to learn more, or delete them if you like</li>
  <li>Continue with step 4 to configure the remainder of your workflow</li>
  </ul>
  </details>

4. Configure your workflow to accomplish the following:

    - Use a service principal to authenticate to Azure

        <details>
        <summary>💡 Tips and Tricks</summary>
        A GitHub Action workflow can have multiple jobs and jobs can have multiple steps, your current workflow likely has a job called <code>greet:</code>. You can rename this if you like, <code>build-and-deploy</code> is frequently used as a name in examples.
        <ol>
        <li>Search the marketplace for an <strong>Azure login</strong> Action</li>
        <li>Select the action and select the latest version to see the code snippet</li>
        <li>Copy the code and replace the content under <code>steps:</code></li>
        <br/>
          🗈 NOTE: Indentation is important in YAML, intellisense will likely red underline text that is not indented correctly. If required, use tab to indent all the text you've added.
        <br/>
        <li>See the documentation for the Azure Login action by selecting the <a href="https://github.com/marketplace/actions/azure-login#github-actions-for-deploying-to-azure"><strong>View full Marketplace listing</strong></a> link</li>
        <li>You will see that you're going to need some secrets, learn about GitHub Secrets <a href="https://docs.github.com/en/actions/security-guides/encrypted-secrets#creating-encrypted-secrets-for-a-repository">here</a></li>
        <li>You will need to create a secret, details for that are in the Marketplace listing <a href="https://github.com/marketplace/actions/azure-login#configure-deployment-credentials">here</a></li>
        </ol>
        </details>

    - Use the "Deploy Azure Resource Manager (ARM) Template" action to call your ARM template in your repo

        <details>
        <summary>💡 Tips and Tricks</summary>
         <ul>
        <li>Use what you learned in the previous step to complete this step, you will need to review the Marketplace listing to determine which values you need to provide</li>
        </ul>
        </details>


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
name: Azure ARM
on:
  workflow_dispatch:

env:
  targetEnv: Dev

jobs:
  build-and-deploy:
    runs-on: ubuntu-latest
    steps:

      # Log into Azure
    - uses: azure/login@v1.4.6
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

