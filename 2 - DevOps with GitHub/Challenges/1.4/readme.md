# Challenge 1.4 - Continuous Integration

👉 Don't leave your teammates behind! See if anyone else needs a hand before you start a new challenge.

## Overview

With our existing repository and newly-created Azure App Service, we have laid the foundation for our application. Now, we must connect our source code and its destination. The first step in this journey is called Continuous Integration (CI).

Continuous integration is the process of merging local code changes into source control and may include steps to automatically build and/or test the code. When done effectively, Continuous Integration allows developers to rapidly iterate and collaborate, and it helps ensure that newly added code does not break the current application.

<details>
<summary>📚 Additional Reading</summary>
<ul>
<li><a href="https://docs.github.com/en/actions/building-and-testing-code-with-continuous-integration/about-continuous-integration">About continuous integration</a></li>
<li><a href="https://docs.github.com/en/actions/building-and-testing-code-with-continuous-integration/setting-up-continuous-integration-using-github-actions">Setting up continuous integration using workflow templates</a></li>
</ul>
</details>

## Objectives

In this challenge, you will build and test the .NET Core application.

1. Create a new `.NET Core` workflow from the GitHub Actions marketplace.

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
      <li>In your repo, click on Actions in the top menu > New Workflow (button) > scroll down to the 'Continuous integration workflows' section and setup the '.NET' action. (You may need to select <strong>View all</strong></li>
      <li><a href="https://docs.github.com/en/free-pro-team@latest/actions/learn-github-actions/introduction-to-github-actions">Introduction to GitHub Actions</a></li>
      <li><a href="https://github.com/actions/starter-workflows/blob/dacfd0a22a5a696b74a41f0b49c98ff41ef88427/ci/dotnet-core.yml">.NET Core Action to build and test</a></li>
    </ul>
    </details>

2. Review the layout of the workflow. There is a single job (named 'build') with multiple steps (checkout, setup, restore, build, test).

    <details>
    <summary>📚 Additional Reading</summary>
    <ul>
    <li><a href="https://github.com/Azure/actions">GitHub Actions for Azure</a>
    </ul>
    </details>

3. In your workflow, under the "Setup .NET Core" step, change the .NET version to `2.2` to match the version defined by the application.

4. If it is not already, configure the workflow to trigger on pushes *and* pull requests.

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
      <li><a href="https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions#using-multiple-events">Using multiple events</a></li>
    </ul>
    </details>

5. Configure path filters to *only* trigger this workflow for changes in the `Application` folder.

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
      <li><a href="https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions#example-including-paths">Understanding workflow path filters</a></li>
      <li>Common mistakes for the path include, adding a leading slash, e.g. <code>/Application</code> might not work but <code>Application</code> might</li>
      <li>You also might need to include a wildcard, what's the difference between <code>Application/*</code> and <code>Application/**</code>?</li>
    </ul>
    </details>

6. Update the predefined steps used to build the .NET Core application (note: for each step below, you will need to update each command to pass the relative path to the `.csproj` as an argument):

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
      <li><a href="https://docs.microsoft.com/en-us/dotnet/core/tools/dotnet#dotnet-commands">dotnet commands</a></li>
      <li>The <strong>.csproj</strong> project file is located in <code>./Application/src/RazorPagesTestSample/RazorPagesTestSample.csproj</code></li>
      <li>The <strong>.csproj</strong> test file is located in <code>./Application/tests/RazorPagesTestSample.Tests/RazorPagesTestSample.Tests.csproj</code></li>
    </ul>
    </details>

    <details>
    <summary>📚 Additional Reading</summary>
    <ul>
    <li><code>restore</code> - will get all the dependencies. Update with an <a href="https://docs.microsoft.com/en-us/dotnet/core/tools/dotnet-build#arguments">argument</a> to the application csproj file.</li>
    <li><code>build</code> - will actually compile our code. Update with an argument to the application csproj file.</li>
    <li><code>test</code> - will execute all our unit tests. Update with an argument to the unit test csproj file.</li>
    </ul>
    </details>

7. Save and test the workflow by making a small change to the application code (i.e., add a comment). Commit, push and ensure the workflow completes successfully.

At this point, any changes pushed to the `Application` folder automatically triggers the workflow...and that is Continuous Integration! 

## Success Criteria

- Any changes pushed to the `Application` folder automatically triggers the workflow 
- .NET Core restore, build and test steps completes successfully


Your YAML file should be similar to: 

```yaml
name: .NET CI

on:
  push:
    branches: [ main ]
    paths: Application/**
  pull_request:
    branches: [ main ]
    paths: Application/**
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

