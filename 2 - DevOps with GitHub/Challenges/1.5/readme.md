# Challenge 1.5 - Build and Push Docker image to container registry

👉 Don't leave your teammates behind! See if anyone else needs a hand before you start a new challenge.

## Overview

Containers are a great way to package and deploy applications consistently across environments. If you are new to containers, there are 3 key steps to creating and publishing an image - outlined below. Because this is a hackathon focused on DevOps and not containers, we've strived to make this challenge as straightforward as possible.

Now, we need to extend our workflow with steps to build a docker image and push it to Azure Container Registry (ACR). In the NEXT challenge, we will configure the Web App to pull the image from ACR. The three key steps to build and push a container image to a container registry are:

1. `docker login` - you need to login to the container registry that you will push your image to. As you can imagine, you don't want anyone to publish an image in your registry, so it is often setup as a private registry...requiring authentication to push and pull images.

2. `docker build` - you need to call docker.exe (running locally on your machine or on your build server) to create the container image. A *critical* component of this is the `Dockerfile`, which gives instructions to docker.exe on how to build the image, the files to copy, ports to expose and startup commands.

3. `docker push` - once you have created your docker image, you need to store it in the container registry, which is our secured and centralized location to store docker images. Docker supports a push command that copies the docker image to the registry in the proper repository. A repository is a logical way of grouping and versioning docker images.

## Objectives

In this challenge, you will build and push a docker image to ACR:

1. At the top of your .NET Core workflow file, create 4 environment variables:

    - `registryName` - the full server address of your ACR instance. Set this to "`registryName`.azurecr.io" - replacing `registryName` with the `<prefix>devopsreg` value in your ARM template file (line #26). 
    - `repositoryName` - The repository to target in the registry. Set this to "`wth/dotnetcoreapp`".
    - `dockerFolderPath` - The path to the folder that contains the Dockerfile - a critical parameter. You will need to point to the folder: `Application/src/RazorPagesTestSample`. Docker files contain the instructions to build a container image.
    - `tag` - This needs to be a unique value each time, as this is used to version the images in the repository. GitHub makes [environment variables](https://docs.github.com/en/free-pro-team@latest/actions/reference/context-and-expression-syntax-for-github-actions#github-context) available that helps with this. Set `tag` to the [github.run_number](https://docs.github.com/en/actions/learn-github-actions/contexts#github-context) environment variable. Make sure you use the [expression syntax](https://docs.github.com/en/actions/learn-github-actions/contexts#about-contexts).

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
    <li><a href="https://docs.github.com/en/free-pro-team@latest/actions/reference/workflow-syntax-for-github-actions#env">Environment variables</a></li>
    <li><a href="https://docs.microsoft.com/en-us/azure/container-registry/container-registry-authentication#admin-account">Authenticate with an Azure container registry</a></li>
    <li><a href="https://docs.github.com/en/free-pro-team@latest/actions/learn-github-actions/introduction-to-github-actions">Introduction to GitHub Actions</a></li>
    <li><a href="https://github.com/Azure/actions">GitHub Actions for Azure</a></li>
    </ul>
    </details>

2. Go to the Azure Portal and get the (1) username and (2) password and (3) login server to your ACR instance and save as GitHub secrets (`ACR_USERNAME`, `ACR_PASSWORD`, `ACR_LOGIN_SERVER`).

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
    <li>In your <a href="https://portal.azure.com/#view/HubsExtension/BrowseResource/resourceType/Microsoft.ContainerRegistry%2Fregistries">container registry</a>, you will find all the required details in the <strong>Access keys</strong> menu item under <strong>Settings</strong></li>
    </ul>
    </details>

3. Add a second **job** to your existing .NET Core workflow, if you're unsure what name to use for your job, you can use the name `dockerBuildPush:`.

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
    <li>Check your previous job named <code>build</code> for some tips on what to include in your second job</li>
    </ul>
    </details>

4. Make sure the first step in your second job includes `- uses: actions/checkout@v2`

5. To authenticate to the registry, add a `Docker Login` step named `Docker login`, you only need to include the `registry`, `username`, and `password` properties

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
    <li>You're going to need to include both environment variables <code>${{ env.registryName }}</code> and secrets <code>${{ secrets.ACR_USERNAME }}</code></li>
    </ul>
    </details>

6. To build your image, add a step named `Docker build` with the following as the `run` command: `docker build -t $registryName/$repositoryName:$tag --build-arg build_version=$tag $dockerFolderPath`

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
    <li><a href="https://docs.github.com/en/enterprise-server@3.4/actions/using-workflows/about-workflows#understanding-the-workflow-file">Understanding the workflow file</a></li>
    </ul>
    </details>

7. To push your image to ACR, add a step named `Docker push` with the following as the `run` command: `docker push $registryName/$repositoryName:$tag`

8. Test the workflow by making a small change to the application code (i.e., add a comment). Commit, push, monitor the workflow and verify that a new container image is built, uniquely tagged and pushed to ACR after each successful workflow run.

## Success Criteria

- A new container image is built, uniquely tagged and pushed to ACR after each successful workflow run.

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
  build:
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

  dockerBuildPush:
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
```

[< Previous Challenge](../1.4/readme.md) | [Next Challenge >](../1.6/readme.md)

