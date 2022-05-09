# Challenge 1.2 - Branching

## Before you begin

* Check out the detailed setup guide [here](/Setup/readme.md)
* Every challenge is dependant on the previous challenges, make sure you work through them in order
* Don't leave your team mates behind! See if anyone else needs a hand before you start a new challenge

## Overview

Branching allows you to separate your work into different flows of work without those pieces of work interfering with each other. There are common branching strategies that are used when working with Git, some of these include (Git Flow)[https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow], (GitHub Flow)[https://githubflow.github.io/] and (GitLab Flow)[https://docs.gitlab.com/ee/topics/gitlab_flow.html].

Each strategy has it's own advantages and disadvantages.

In this hackathon, we will use the `main` branch to mirror what is running in our production environment and we will use `feature` branches for our work in progress.

We need to protect the master branch against unauthorised changes and create a feature branch for your work.

Your second challenge is to create and configure your branches, once you have finished this challenge you will have an understanding of:
* How to secure the `main` production branch against unauthorised changes
* How to create and edit branches in Azure DevOps

## Objectives

1. Configure the `main` branch to require at least one reviewer

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
        <li><a target="_blank" href="https://docs.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops&tabs=browser#require_reviewers">About branches and branch policies</a></li>
    </ul>
    </details>
    <br/>

2. Create a `feature` branch for your work in progress with the name `feature-update-readme-<your-name>` for example: `feature-update-readme-wayne-hoggett`

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
        <li><a target="_blank" href="https://docs.microsoft.com/en-us/azure/devops/repos/git/create-branch?view=azure-devops&tabs=browser">Create a new Git branch</a></li>
    </ul>
        <li>We're using a naming convention for our feature branches. The naming convention can be anything you like, but it's quite common to include the branch type, what the work is and who is working on it.</li>
    </details>
    <br/>

## Success Criteria

You will have:
* A branch policy protecting unapproved changes from being committed to you main branch
* A feature branch branch to store your work in progress

[< Previous Challenge](../1.1/readme.md) | [Next Challenge >](../1.3/readme.md)
