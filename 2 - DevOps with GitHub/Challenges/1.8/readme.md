# Challenge 1.8 - Monitoring with Application Insights

👉 Don't leave your teammates behind! See if anyone else needs a hand before you start a new challenge.

## Overview

To bring our DevOps journey full circle we need to understand what is happening in our deployed environments. It is too late for us to find out about a problem, by the time our users are complaining about it. It is also imperative to know about not only the performance of the site, but also the impact positive or negative a feature has had on our users. Please take a moment to review the articles below to gain a better understanding of the importance of monitoring and Application Insights, one of the tools we have to make it easy in Azure. 

<details>
<summary>📚 Additional Reading</summary>
<ul>
<li><a href="https://docs.microsoft.com/en-us/azure/devops/learn/what-is-monitoring">What is Monitoring?</a>
<li><a href="https://docs.microsoft.com/en-us/azure/azure-monitor/app/app-insights-overview">What is Application Insights</a>
</ul>
</details>

## Objectives

In this challenge we will look at some of the telemetry that has already been collected by our running instance and implement an outside availability test.

1. Review the `container-webapp-template.json` ARM template. Find where the Application Insights node was created and note how the Web App was configured to send its logs there. 

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
    <li>Look for <code>Microsoft.Insights/components</code> in the ARM template. There is an <code>applicationId</code> that references the Web App</li>
    </ul>
    </details>

2. Create a dashboard in the Azure Portal to provide a summary of the status of our site.

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ol>
    <li>Application Insights Overview dashboard: <a href="https://docs.microsoft.com/en-us/azure/azure-monitor/app/overview-dashboard#application-dashboard">Application Dashboard</a></li>
    </ol>
    There are many different metrics you can setup to view the status of your site. Things such as requests, http return codes, or connections are valid depending on the site. To add them:
    <ol>
    <li>Go to your app insights instance.</li>
    <li>Select "Application Dashboard" on the top left"</li>
    <li>Right click on your dashboard and select "Edit"</li>
    <li>On the right, you will see many different selections to choose a new tile. Select <strong>Metrics Chart</strong> and click <strong>Add</strong></li>
    <li>A new tile will appear, save the dashboard</li>
    <li>Click on it to modify the metrics of that tile</li>
    <li>Set the scope to the production web app</li> 
    <li>Select one of the options to reflect what the tile will represent such as number of connections</li>
    </ol>
    </details>

3. Implement an outside in availability test for the homepage of your site.

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
    <li><a href="https://docs.microsoft.com/en-us/azure/azure-monitor/app/monitor-web-app-availability">Outside availability tests</a></li>
    </ul>
    </details>

### Success Criteria

1. You should understand the importance of monitoring and some of the basic features offered by Application Insights.

[< Previous Challenge](../1.6/readme.md) | [Next Challenge >](../1.9/readme.md)

