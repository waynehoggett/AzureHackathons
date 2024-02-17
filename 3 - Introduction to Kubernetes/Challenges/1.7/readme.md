# Challenge 1.7 - Create a Deployment

## Overview

Pods are the smallest deployable units of computing that you can create and manage in Kubernetes. Instead of deploying single pods, you will most likely create deployments. A **deployment** provides declarative updates for **Pods** and **ReplicaSets**. A ReplicaSet's purpose is to maintain a stable set of replica Pods running at any given time.

## Objectives

1.  **Define a deployment**

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
    <li><a href="https://kubernetes.io/docs/concepts/workloads/controllers/deployment/#creating-a-deployment">Creating a deployment</a></li>
    <li>Refer to <a href="deployment.yaml">deployment.yaml</a> for a sample deployment manifest</li>
    </ul>
    </details>

2.  Deploy your containerized application using your deployment

      <details>
         <summary>💡 Tips and Tricks</summary>
         <ul>
            <li>You can manage your Kubernetes application lifecycle with <a href="https://kubernetes.io/docs/reference/kubectl/cheatsheet/#kubectl-apply">kubectl apply</a></li>
            <li>For example: <code>kubectl apply -f deployment.yaml</code></li>
         </ul>
      </details>

3.  Get a list of your deployments using kublectl

      <details>
         <summary>💡 Tips and Tricks</summary>
         <ul>
            <li><a href="https://kubernetes.io/docs/reference/kubectl/cheatsheet/#viewing-and-finding-resources">Viewing and finding resources with Kubectl</a></li>
            <li>For example: <code>kubectl get deployments</code></li>
         </ul>
      </details>

## Success Criteria

- You defined a deployment
- You deployed your application using your deployment
- You listed your deployment using kubectl

[Next Challenge >](../1.8/readme.md)
