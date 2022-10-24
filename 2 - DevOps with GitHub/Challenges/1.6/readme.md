# Challenge 1.6 - Build and push Docker image to container registry

## Before you begin

* Check out the detailed setup guide [here](/Setup/readme.md)
* Every challenge is dependent on the previous challenges, make sure you work through them in order
* Don't leave your team mates behind! See if anyone else needs a hand before you start a new challenge

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

Extend the workflow you created in Challenge 1.4 to:

1. Configure your `dev` environment to pull the latest container image from ACR. 
   - Login to Azure using your service principal, if needed ([hint](https://docs.microsoft.com/en-us/azure/app-service/deploy-container-github-action?tabs=service-principal#tabpanel_CeZOj-G++Q-3_service-principal))
   - Use the `Azure/webapps-deploy@v2` [action](https://github.com/Azure/webapps-deploy) to update the Web App to pull the latest image from ACR. Key parameters to configure:
      - `app-name` - the name of the wep app instance to target
      - `images` - the path to the image you pushed to ACR

2. Make a small change to your application  (i.e.,`/Application/aspnet-core-dotnet-core/Views/Home/Index.cshtml`), commit, push, monitor the workflow and see if the change shows up on the dev instance of the website.

3. Configure your workflow to deploy to your `test` and `prod` environments and after a manual approval for *each* environment.

## Success Criteria

- A new container image is built, uniquely tagged and pushed to ACR after each successful workflow run.

Your YAML file should look similar to the below file:

```yaml
name: CI

env:
  registryName: devopsreg.azurecr.io
  repositoryName: wth/razorcore
  dockerfilePath: Application/src/RazorPagesTestSample
  tag: ${{github.run_number}}

on:
  push:
    branches: [ main ]
    paths:
    - 'Application/**'
    - '.github/workflows/ci.yml'
      
jobs:

  build-and-test:
  
    runs-on: ubuntu-latest
    
    steps:
    - uses: actions/checkout@v2
    - name: Setup .NET Core
      uses: actions/setup-dotnet@v1
    - name: Install dependencies
      run: dotnet restore ./Application/src/RazorPagesTestSample/RazorPagesTestSample.csproj
    - name: Build
      run: dotnet build ./Application/src/RazorPagesTestSample/RazorPagesTestSample.csproj --configuration Release --no-restore
    - name: Test
      run: dotnet test ./Application/tests/RazorPagesTestSample.Tests/RazorPagesTestSample.Tests.csproj --no-restore --verbosity normal
    - uses: actions/github-script@0.9.0
      if: failure()
      with:
        github-token: ${{secrets.GITHUB_TOKEN}}
        script: |
          let body = "${{ env.build_name }} Worflow Failure \n Build Number: ${{ github.run_number }} \n Build Log: https://github.com/${{ github.repository }}/actions/runs/${{ github.run_id }} \n SHA: [${{ github.sha }}](https://github.com/${{ github.repository }}/commit/${{ github.sha }}) \n";
          github.issues.create({
            owner: context.repo.owner,
            repo: context.repo.repo,
            title: "${{ env.build_name }} Workflow ${{ github.run_number }} Failed! ",
            body: body
          });
  
  docker-build-and-push:
  
    needs: build-and-test
    runs-on: ubuntu-latest
    
    steps:
      - uses: actions/checkout@v2
      
      - name: Azure Container Registry Login
        uses: Azure/docker-login@v1
        with:
          # Container registry username
          username: ${{ secrets.ACR_USERNAME }}
          # Container registry password
          password: ${{ secrets.ACR_PASSWORD }}
          # Container registry server url
          login-server: ${{ secrets.ACR_NAME }}

      - name: Docker build
        run: docker build -t ${{secrets.ACR_NAME}}/$repositoryName:$tag --build-arg build_version=$tag $dockerfilePath

      - name: Docker Push
        run: docker push ${{secrets.ACR_NAME}}/$repositoryName:$tag
    
  deploy-to-dev:
  
    runs-on: ubuntu-latest
    needs: docker-build-and-push
    environment:
      name: dev
      url: https://devopsreg-dev.azurewebsites.net/
    
    steps:
      - name: 'Login via Azure CLI'
        uses: azure/login@v1
        with:
          creds: ${{ secrets.AZURE_CREDENTIALS }}

      - uses: azure/webapps-deploy@v2
        with:
          app-name: 'devopsreg-dev'
          images: ${{secrets.ACR_NAME}}/wth/razorcore:${{github.run_number}}

  deploy-to-test:
  
    runs-on: ubuntu-latest
    needs: deploy-to-dev
    environment:
      name: test
      url: https://devopsreg-test.azurewebsites.net/
    
    steps:
    - uses: actions/checkout@v2
    
    - name: 'Login via Azure CLI'
      uses: azure/login@v1
      with:
        creds: ${{ secrets.WEBAPP_TEST_CREDS }}

    - uses: azure/webapps-deploy@v2
      with:
        app-name: 'devopsreg-test'
        images: ${{secrets.ACR_NAME}}/wth/razorcore:${{github.run_number}}

  deploy-to-prod:
  
    runs-on: ubuntu-latest
    needs: deploy-to-test
    environment:
      name: prod
      url: https://devopsreg-prod.azurewebsites.net/
    
    steps:
    - uses: actions/checkout@v2
    
    - name: 'Login via Azure CLI'
      uses: azure/login@v1
      with:
        creds: ${{ secrets.PROD_WEBAPP }}

    - uses: azure/webapps-deploy@v2
      with:
        app-name: 'devopsreg-prod'
        images: ${{secrets.ACR_NAME}}/wth/razorcore:${{github.run_number}}

```

[< Previous Challenge](../1.5/readme.md) | [Next Challenge >](../1.7/readme.md)

