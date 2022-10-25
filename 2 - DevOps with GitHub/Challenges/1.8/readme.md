# Challenge 1.8 - Monitoring with Application Insights

👉 Don't leave your teammates behind! See if anyone else needs a hand before you start a new challenge.

## Overview

To bring our DevOps journey full circle we need to understand what is happening in our deployed environments. It is too late for us to find out about a problem, by the time our users are complaining about it. It is also imperative to know about not only the performance of the site, but also the impact positive or negative a feature has had on our users. Please take a moment to review the articles below to gain a better understanding of the importance of monitoring and Application Insights, one of the tools we have to make it easy in Azure. 

<br/>
<details>
<summary>📚 Additional Reading</summary>
<ul>
<li><a href="https://docs.microsoft.com/en-us/azure/devops/learn/what-is-monitoring">What is Monitoring?</a>
<li><a href="https://docs.microsoft.com/en-us/azure/azure-monitor/app/app-insights-overview">What is Application Insights</a>
</ul>
</details>
<br/>


## Objectives

In this challenge we will look at some of the telemetry that has already been collected by our running instance. We will also link Application Insights to Azure DevOps. This will allow us to open work items in Azure Boards directly from Application Insights, ensuring that there is full traceability between the issue that happened and all the technical information about it to the work item that was created to ask the dev team to fix it, to the code that fixed the issue, to the build and release that saw that fix get deployed. 

1. Review the `container-webapp-template.json` ARM template. Find where the Application Insights node was created and note how the Web App was configured to send its logs there. 

2. Create a dashboard in the Azure Portal to provide a summary of the status of our site. ([hint](https://docs.microsoft.com/en-us/azure/azure-monitor/app/overview-dashboard#application-dashboard))

    <br>
    <details>
    <summary>💡 Tips and Tricks</summary>
    There are many different metrics you can setup to view the status of your site. Things such as requests, http return codes, or connections are valid depending on the site. To add them:
    <ol>
    <li>Go to your app insights instance.</li>
    <li>Select "Dashboard" on the top left"</li>
    <li>Right click on your dashboard and select "Edit"</li>
    <li>On the right, you will see many different selections to choose a new tile. Select "Metrics Chart"</li>
    <li>A new tile will appear, click on it to modify the metrics of that tile.</li>
    <li>Select one of the options to reflect what the tile will represent such as number of connections.</li>
    </ol>
    </details>
    <br>

3. Implement an outside in availability test for the homepage of your site ([hint](https://docs.microsoft.com/en-us/azure/azure-monitor/app/monitor-web-app-availability))

    <br>
    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
    <li><a href="https://docs.microsoft.com/en-us/azure/azure-monitor/app/monitor-web-app-availability">Outside availability tests</a></li>
    </ul>
    </details>
    <br>

### Success Criteria

1. You should understand the importance of monitoring and some of the basic features offered by Application Insights.

    - **NOTE**: We are just scratching the surface of what is offered in Azure Monitoring, if you are interested in learning more there is a full What the Hack focused on [Azure Monitoring](https://github.com/microsoft/WhatTheHack/tree/master/007-AzureMonitoring).


[< Previous Challenge](../1.6/readme.md) | [Next Challenge >](../1.9/readme.md)

