# Challenge 1.6 - Continuous Delivery (CD)

👉 Don't leave your teammates behind! See if anyone else needs a hand before you start a new challenge.

## Overview

In DevOps after we automate our build process, we want to automate our release process, we do this with a technique called Continuous Delivery (CD). Please take a moment to review this brief article talking about why this is important. 

<br/>
<details>
<summary>📚 Additional Reading</summary>
<ul>
<li><a href="https://docs.microsoft.com/en-us/azure/devops/learn/what-is-continuous-delivery">What is Continuous Delivery?</a></li>
</ul>
</details>
<br />

## Objectives

In this challenge, we will use GitHub Actions to deploy our container image to the dev environment. 

💡 Tip: You can use your code editor (VS Code) to update your workflow file locally on your machine. Remember to commit and push any changes.

Extend the .NET workflow you created in Challenge 1.4 to:

1. Configure your `dev` environment to pull the latest container image from ACR. 
   - Login to Azure using your service principal
      <details>
      <summary>💡 Tips and Tricks</summary>
      <ul>
      <li>Search the GitHub Actions Marketplace for <code>Azure WebApp</code>. You can use the <a href="https://github.com/marketplace/actions/azure-webapp#sample-workflow-to-build-and-deploy-a-nodejs-app-to-containerized-webapp-using-publish-profile">GitHub Action for deploying to Azure Web App</a></li>
      <li>Save yourself some time here, remember that you logged into Azure with a Service Principal in your manual workflow</li>
      <li>No need to generate deployment credentials, these are provided by your coach.</li>
      </ul>
      </details>

   - Use the `Azure/webapps-deploy@v2` [action](https://github.com/Azure/webapps-deploy) to update the Web App to pull the latest image from ACR. Key parameters to configure:
      - `app-name` - the name of the wep app instance to target
      - `images` - the path to the image you pushed to ACR

      <summary>💡 Tips and Tricks</summary>
      <ul>
      <li><a href="https://learn.microsoft.com/en-us/azure/app-service/deploy-container-github-action?tabs=service-principal#deploy-to-an-app-service-container">Deploy to an App Service container</a>
      </li>
      <li><a href="https://github.com/marketplace/actions/azure-webapp">GitHub Action for deploying to Azure Web App</a></li>
      </ul>
      </details>

2. Make a small change to your application  (e.g.`/Application/aspnet-core-dotnet-core/Views/Home/Index.cshtml`), commit, push, monitor the workflow and see if the change shows up on the dev instance of the website.

3. Configure your workflow to deploy to your `test` and `prod` environments and after a manual approval for *each* environment.

      <summary>💡 Tips and Tricks</summary>
      <ul>
      <li>It might be time to configure some<a href="https://docs.github.com/en/actions/deployment/targeting-different-environments/using-environments-for-deployment#about-environments">environments</a>
      </li>
      </ul>
      </details>

## Success Criteria

* A small change to /Application/aspnet-core-dotnet-core/Views/Home/Index.cshtml automatically shows up on the website running in the dev environment (i.e., <prefix>devops-dev.azurewebsites.net).
 * Manual approval is required to deploy to the test and prod environments.


Your YAML file should look similar to the below file:

```yaml
name: .NET

on:
  push:
    branches: [ main ]
    paths: Application/**
  pull_request:
    branches: [ main ]
    paths: Application/**
    
env:
  registryName: whack1devopsreg.azurecr.io
  repositoryName: wth/dotnetcoreapp
  dockerFolderPath: Application/src/RazorPagesTestSample
  tag: ${{ github.run_number }}

jobs:
  build-and-test:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v3
    - name: Setup .NET
      uses: actions/setup-dotnet@v3
      with:
        dotnet-version: 2.2
    - name: Restore dependencies
      run: dotnet restore ./Application/src/RazorPagesTestSample/RazorPagesTestSample.csproj
    - name: Build
      run: dotnet build --no-restore ./Application/src/RazorPagesTestSample/RazorPagesTestSample.csproj
    - name: Test
      run: dotnet test --no-build --verbosity normal ./Application/tests/RazorPagesTestSample.Tests/RazorPagesTestSample.Tests.csproj

  docker-build-and-push:
    runs-on: ubuntu-latest
    
    steps:
    - uses: actions/checkout@v2
    
    - name: Docker Login
      uses: docker/login-action@v2.1.0
      with:
        registry: ${{ env.registryName }}
        username: ${{ secrets.ACR_USERNAME }}
        password: ${{ secrets.ACR_PASSWORD }}
        
    - name: Docker build
      run: docker build -t $registryName/$repositoryName:$tag --build-arg build_version=$tag $dockerFolderPath
    
    - name: Docker Push
      run: docker push $registryName/$repositoryName:$tag
      
  deploy-to-dev:
    runs-on: ubuntu-latest
    needs: docker-build-and-push
    environment:
      name: dev
      url: https://whack1devops-dev.azurewebsites.net/
    steps:
    - uses: azure/login@v1
      with:
        creds: ${{ secrets.AZURE_CREDENTIALS }}
    - uses: azure/webapps-deploy@v2
      with:
        app-name: 'whack1devops-dev'
        images: '${{env.registryName}}/${{env.repositoryName}}:${{env.tag}}'
    - name: Azure logout
      run: |
        az logout

  deploy-to-test:
      runs-on: ubuntu-latest
      needs: [docker-build-and-push, deploy-to-dev]
      environment:
        name: test
        url: https://whack1devops-test.azurewebsites.net/
      steps:
      - uses: azure/login@v1
        with:
          creds: ${{ secrets.AZURE_CREDENTIALS }}
      - uses: azure/webapps-deploy@v2
        with:
          app-name: 'whack1devops-test'
          images: '${{env.registryName}}/${{env.repositoryName}}:${{env.tag}}'
      - name: Azure logout
        run: |
          az logout
             
  deploy-to-prod:
      runs-on: ubuntu-latest
      needs: [docker-build-and-push, deploy-to-test]
      environment:
        name: prod
        url: https://whack1devops-prod.azurewebsites.net/
      steps:
      - uses: azure/login@v1
        with:
          creds: ${{ secrets.AZURE_CREDENTIALS }}
      - uses: azure/webapps-deploy@v2
        with:
          app-name: 'whack1devops-prod'
          images: '${{env.registryName}}/${{env.repositoryName}}:${{env.tag}}'
      - name: Azure logout
        run: |
          az logout
```

[< Previous Challenge](../1.5/readme.md) | [Next Challenge >](../1.7/readme.md)

