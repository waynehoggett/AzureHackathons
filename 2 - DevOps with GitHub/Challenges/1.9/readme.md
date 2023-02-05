# Challenge 1.9 - Security

👉 Don't leave your teammates behind! See if anyone else needs a hand before you start a new challenge.

## Overview

Our application is up and running! We are even using a proper Git Flow to protect against unintended changes to our main branch, and we are recording application telemetry into App Insights. Before we are truly production ready, though, there is one topic we have to cover - **security**. 

One good DevOps practice is to enable protections against code-level vulnerabilities, and GitHub provides a number of useful features in this area. 

First, there are Issues, which allow developers or users to open 'tickets' indicating bugs to be fixed or potential vulnerabilities. If your organization prefers security flaws to be reported in a location other than GitHub, you have the option to provide a custom Security policy which describes the process for reporting. 

In addition to these manual processes, GitHub also provides automated tools for scanning code for common security-related errors. 

In this challenge, you will utilize the built in Dependabot which provides alerts if your repository contains libraries, packages, or external dependencies with known vulnerabilities. You will also set up a workflow with CodeQL which can scan your source code for common coding errors or basic security flaws.

<details>
<summary>📚 Additional Reading</summary>
<ul>
<li>Learn more about adding a security policy to your repository <a href="https://docs.github.com/en/github/managing-security-vulnerabilities/adding-a-security-policy-to-your-repository">here</a></li>
<li>Learn more about Dependabot and vulnerable dependencies <a href="https://docs.github.com/en/github/managing-security-vulnerabilities/managing-vulnerabilities-in-your-projects-dependencies">here</a></li>
<li>Learn more about automated code scanning and understanding results <a href="https://docs.github.com/en/github/finding-security-vulnerabilities-and-errors-in-your-code">here</a></li>
</ul>
</details>

## Objectives

In this challenge, you will improve the security of your repository using some of GitHub's built-in tools. 

1. Find the repository's Security policy. If there is an existing policy, make an edit and merge your change back into the main branch. Otherwise, go ahead and create a policy using the template provided. GitHub Security policies are Markdown documents that indicate the preferred way to report security vulnerabilities for the repository. 

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
        <li>If you are stuck, check out the 'Security' tab of your repository on GitHub.</li>
    </ul>
    </details>

2. Enable Dependabot alerts for the repository. Dependabot is an automated tool that creates a pull request when any dependencies in the code base has a known vulnerability. 

    <details>
    <summary>💡 Tips and Tricks</summary>
    To Setup Dependabot
    <ol>
    <li>In your repo select "Settings"</li>
    <li>On the left hand side, select "Code security and analysis"</li>
    <li>Select "Enable" on "Dependabot alerts" and "Dependabot security updates"</li>
    </ol>
    </details>

3. Finally, set up and run a Code scanning workflow for the repository using GitHub's 'CodeQL Analysis.' This workflow can run either on each pull request or on a schedule, and it checks your code for common vulnerabilities or errors. 

    <details>
    <summary>💡 Tips and Tricks</summary>
    To Enable CodeQL
    <ol>
    <li>In your repo select "Settings"</li>
    <li>On the left hand side, select "Code security and analysis"</li>
    <li>Select "Set up" on "Code scanning"</li>
    <li>On the new page, select "Configure CodeQL Alerts"</li>
    <li>It will give you a default template which you can modify</a></li>
    </ol>
    </details>

## Success Criteria

- In GitHub, you should be able to view the 'closed' pull request which either created or updated the Security policy (SECURITY.md file). 
- Additionally, you should be able to view a new 'open' pull request created by Dependabot requesting an update of a dependency. 
- Finally, you should be able to view the results of the CodeQL Analysis in the Security tab. 


[< Previous Challenge](../1.8/readme.md) | [Home]([../readme.md](https://github.com/waynehoggett/AzureHackathons/tree/main/2%20-%20DevOps%20with%20GitHub))

