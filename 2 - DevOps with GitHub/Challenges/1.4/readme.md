# Challenge 1.4 - Continuous Integration

👉 Don't leave your teammates behind! See if anyone else needs a hand before you start a new challenge.

## Overview

With our existing repository and newly-created Azure App Service, we have laid the foundation for our application. Now, we must connect our source code and its destination. The first step in this journey is called Continuous Integration (CI).

Continuous integration is the process of merging local code changes into source control and may include steps to automatically build and/or test the code. When done effectively, Continuous Integration allows developers to rapidly iterate and collaborate, and it helps ensure that newly added code does not break the current application.
<br/>
<details>
<summary>📚 Additional Reading</summary>
<ul>
<li><a href="https://docs.github.com/en/actions/building-and-testing-code-with-continuous-integration/about-continuous-integration">About continuous integration</a></li>
<li><a href="https://docs.github.com/en/actions/building-and-testing-code-with-continuous-integration/setting-up-continuous-integration-using-github-actions">Setting up continuous integration using workflow templates</a></li>
</ul>
</details>
<br />

## Objectives

In this challenge, you will build and test the .NET Core application.

1. Create a new `.NET Core` workflow from the GitHub Actions marketplace. In your repo, click on Actions in the top menu > New Workflow (button) > scroll down to the 'Continuous integration workflows' section and setup the '.NET Core' action.

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
        <li><a href="https://docs.github.com/en/free-pro-team@latest/actions/learn-github-actions/introduction-to-github-actions">Introduction to GitHub Actions</a></li>
        <li><a href="https://github.com/actions/starter-workflows/blob/dacfd0a22a5a696b74a41f0b49c98ff41ef88427/ci/dotnet-core.yml">.NET Core Action to build and test</a></li>
    </ul>
    </details>
    <br />

2. Review the layout of the workflow. There is a single job (named 'build') with multiple steps (restore, build, test).

- [GitHub Actions for Azure](https://github.com/Azure/actions)

3. In your workflow, under the "Setup .NET Core" step, change the .NET version to `2.2` to match the version defined by the application.

4. Configure path filters to *only* trigger this workflow for changes in the `/Application` folder.

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
        <li><a href="https://docs.github.com/en/free-pro-team@latest/actions/reference/workflow-syntax-for-github-actions#onpushpull_requestpaths">Understanding workflow path filters</a></li>
    </ul>
    </details>
    <br>

5. Configure the workflow to trigger on pushes *and* pull requests.

6. Update the predefined steps used to build the .NET Core application (note: for each step below, you will need to update each command to pass the relative path to the  `.csproj` as an argument):
   - `restore` - will get all the dependencies. Update with an [argument](https://docs.microsoft.com/en-us/dotnet/core/tools/dotnet-build#arguments) to the application csproj file.
   - `build` - will actually compile our code. Update with an argument to the application csproj file.
   - `test` - will execute all our unit tests. Update with an argument to the unit test csproj file. 

       <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
        <li><a href="https://docs.microsoft.com/en-us/dotnet/core/tools/dotnet#dotnet-commands">dotnet commands</a></li>

    </ul>
    </details>
    <br>

7. Test the workflow by making a small change to the application code (i.e., add a comment). Commit, push and ensure the workflow completes successfully.

At this point, any changes pushed to the `/Application` folder automatically triggers the workflow...and that is Continuous Integration! 

    <details>
    <summary>📚 Additional Reading</summary>
    <ul>
        <li><a href=""></a></li>
    <li></li>
    </ul>
    </details>

    <br>

    <details>
    <summary>💡 Tips and Tricks</summary>
    To 
    <ul>
        <li><a href=""></a></li>
    <li></li>

    </ul>
    </details>

## Success Criteria

- Any changes pushed to the `/Application` folder automatically triggers the workflow 
- .NET Core restore, build and test steps completes successfully


Your YAML file should look something similar to: 

```yaml
name: .NET CI

on:
  push:
    branches: [ main ]
    paths: Application/*
  pull_request:
    branches: [ main ]
    paths: Application/*
  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:
jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2
    - name: Setup .NET
      uses: actions/setup-dotnet@v1
   
    - name: Restore dependencies
      run: dotnet restore ./Application/src/RazorPagesTestSample/RazorPagesTestSample.csproj
    - name: Build
      run: dotnet build --no-restore ./Application/src/RazorPagesTestSample/RazorPagesTestSample.csproj
    - name: Test
      run: dotnet test --no-build --verbosity normal ./Application/tests/RazorPagesTestSample.Tests/RazorPagesTestSample.Tests.csproj
```



[< Previous Challenge](../1.3/readme.md) | [Next Challenge >](../1.5/readme.md)

