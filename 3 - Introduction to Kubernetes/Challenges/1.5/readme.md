# Challenge 1.5 Enable Kubernetes

## Overview

Kubernetes is the de-facto standard for orchestrating container workloads. Orchestration enables upgrading, scaling and managing your container workloads at-scale.

## Objectives

1.  **Turn on Kubernetes with Docker Desktop**

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
    <li>Refer to this link for instructions on enabling Kubernetes on Docker Desktop: <a href="Deploy on Kubernetes with Docker Desktop">https://docs.docker.com/desktop/kubernetes/</a></li>
    <li>If Kubernetes fails to start or you experience an error, try the following:</li>
    <ul>
    <li>Restart Docker Desktop</li>
    <li>Restart your VM</li>
    <li>Reset the Kubernetes Cluster</li>
    </ul>
    </ul>
    </details>
    <br>

2.  **Display a list of nodes running in your cluster using the kubectl command line tool**

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
    <li>Use <code>kubectl --help</code> to get a list of commands</li>
    <li>You can see that <code>kubectl get</code> will display one or many resources</li>
    <li>Use <code>kubectl api-resources </code> to get a complete list of supported resources</li>
    <li>So you can use <code>kubectl get nodes</code> to get a list of nodes</li>
    </ul>
    </details>
    <br>

## Success Criteria

- Kubernetes is enabled

[Next Challenge >](../1.5/readme.md)
