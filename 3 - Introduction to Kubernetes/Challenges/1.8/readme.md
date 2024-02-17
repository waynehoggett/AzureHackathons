# Challenge 1.8 - Create a Service

## Overview

A **Service** is used to expose a network application that is running as one or more Pods in your cluster. That is, services allow users to access your containerized applications running in pods on nodes in your cluster. Services help abstract away any complex networking from end users.

## Objectives

1.  **Update your deployment with a service**

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
    <li><a href="https://kubernetes.io/docs/concepts/workloads/controllers/deployment/#creating-a-deployment">Creating a deployment</a></li>
    <li>Refer to <a href="deployment.yaml">deployment.yaml</a> for a sample deployment manifest</li>
    <li>In this Kubernetes YAML file, we have two objects, separated by the <code>---:</code></li>
    </ul>
    </details>

2.  **Get a list of services with kubectl**

      <details>
         <summary>💡 Tips and Tricks</summary>
         <ul>
            <li>For example: <code>kubectl get services</code></li>
         </ul>
      </details>

3.  **Access your application**

## Success Criteria

- You updated your deployment with a service
- You get a list of services using kubectl

[Next Challenge >](../1.9/readme.md)
