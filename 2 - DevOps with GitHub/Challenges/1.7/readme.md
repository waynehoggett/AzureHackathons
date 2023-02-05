# Challenge 1.7 - Branching and Policies

👉 Don't leave your teammates behind! See if anyone else needs a hand before you start a new challenge.

## Overview

In the previous steps, we successfully implemented an end-to-end CI/CD pipeline! However, our current workflow will immediately promote every small change directly to production. Typically, you would want to avoid working directly against the main branch in your repository to avoid conflicts and protect the production environment. 

With GitHub, we can solve these challenges using a practice called branching. Some may refer to this as the [GitHub flow](https://guides.github.com/introduction/flow/). When a developer wants to make a change, add a feature, or fix a bug, he or she begins by creating a new 'branch' or copy of the main codebase. Then, the developer makes changes and commits them. He or she creates a pull request to merge these changes back into the main branch. This pull request may or may not involve some testing or discussion. Finally, changes are merged back into the main codebase, and the branch can be deleted. 

In this challenge, you will practice this flow. Additionally, GitHub offers a feature for explicitly protecting against changes directly to the main branch. These are called **branch protection rules**, and you will start by implementing one.

<details>
<summary>📚 Additional Reading</summary>
<ul>
<li>General information about protected branches can be found <a href="https://docs.github.com/en/github/administering-a-repository/about-protected-branches">here</a>, with more configuration specifics <a href="https://docs.github.com/en/github/administering-a-repository/configuring-protected-branches">here</a>.</li>
<li>General information about branches can be found <a href="https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/about-branches">here</a>, with more specifics about creation and deletion <a href="https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-and-deleting-branches-within-your-repository">here</a>.</li>
<li>General information about pull requests can be found <a href="https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests">here</a>, with more specifics about <a href="https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request">creating</a> and <a href="https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/reviewing-changes-in-pull-requests">reviewing</a>.</li>
<li><a href="https://docs.github.com/en/free-pro-team@latest/github/creating-cloning-and-archiving-repositories/about-code-owners">About code owners</a></li>
<li><a href="https://docs.github.com/en/free-pro-team@latest/github/administering-a-repository/enabling-required-status-checks">Enabling required status checks</a></li>
<li><a href="https://docs.github.com/en/free-pro-team@latest/github/administering-a-repository/about-required-reviews-for-pull-requests">About required reviews for pull requests</a></li>
    </ul>
</details>

## Objectives

1. Create a branch protection rule which prevents developers from committing changes to the main branch in the repository.

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
    <li>If your GitHub account was created on the 'Free' tier, then in order to create a Branch Protection rule your repository must be public. To change a repository from private to public, visit the 'Settings' tab, and scroll to the bottom where you have the option to 'Change visibility'.</li>
    <li>To create branch protection rules:</li>
    <ol>
    <li>In your repository, go to "Settings"</li>
    <li>Select "Branches" on the left hand side.</li>
    <li>Select "Add branch protection rule"</li>
    <li>For branch pattern enter the default branch such as main or master</li>
    <li>Check "Require a pull request before merging" and select "Require review from Code Owners"</li>
    <li>Select "Create"</li>
    </ol>
    </ul>
    </details>

2. Create a feature branch, make a small change to the code ( e.g. `/Application/aspnet-core-dotnet-core/Views/Home/Index.cshtml`), publish your branch (if required) and sync this branch with the GitHub repository.

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
    <li>Using Git source control in VSCode: <a href="https://code.visualstudio.com/docs/sourcecontrol/overview#_branches-and-tags">Branches and Tags</a></li>
    </ul>
    </details>

3. Define a code owner for the `/Application` directory. Your branch policy should require a review from the code owner. 

    <details>
    <summary>💡 Tips and Tricks</summary>
    To define code owners:
    <ul>
    <li>A new file at the root of the repo is needed called "CODEOWNERS", you will need to define the path and the owner:</li>
    <code>/Application/ @waynehoggett</code><br/>
    <li>The following is needed to run during the pull request and only for the application path:</li>
    <code>pull_request:    </code><br/>
    <code>branches: [ main ]</code><br/>
    <code>paths: Application/**</code><br/>
    <li>Create your CODEOWNERS file directly in the main branch Github</li>
    </ul>
    </details>

4. Create and complete a Pull Request, merging your code change into the protected branch.

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
    <li>You can create a Pull Request using github.com, go to <strong>Pull Requests</strong> and select <strong>New pull request</strong>, then select main as the base branch and select your feature branch as the compare branch</li>
    <li>If using the git command line interface, you can find a number of sample git commands that are useful for branching <a href="https://gist.github.com/JamesMGreene/cdd0ac49f90c987e45ac">here</a></li>
    <li>Make sure to focus on the 'git' commands, rather than 'gitflow'</li>
    </details>

### Success Criteria

- You have a branch protection rule which prevents changes from being committed to your main branch.

- Changes to the application (i.e.,`/Application/aspnet-core-dotnet-core/Views/Home/Index.cshtml`) are committed to a feature branch.

- Before a pull request is completed:
    - A code owner must approve the changes ([hint](https://docs.github.com/en/free-pro-team@latest/github/creating-cloning-and-archiving-repositories/about-code-owners))
    - A CI workflow is run against the feature branch ensuring the application passes a build and test ([hint](https://docs.github.com/en/free-pro-team@latest/github/administering-a-repository/enabling-required-status-checks))

- A completed pull request merges with the protected branch and is automatically deployed to the dev environment.


[< Previous Challenge](../1.6/readme.md) | [Next Challenge >](../1.8/readme.md)

