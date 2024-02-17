# Challenge 1.5 Enable Kubernetes

## Overview

Kubernetes is the de-facto standard for orchestrating container workloads. Orchestration enables upgrading, scaling and managing your container workloads at-scale.

In this challenge, you will enable a Kubernetes **Cluster** on your virtual machine. A cluster is a set of worker machines, called **nodes**, that run containerized applications. Every cluster has at least one worker node. The cluster deployed by Docker is a single-node cluster, running on your VM.

A node is a worker machine in Kubernetes. Your nodes can run either workloads (which are your containerized apps), or Control Plane components. The **Control Plane** is the container orchestration layer that exposes the API and interfaces to define, deploy, and manage the lifecycle of containers.

Enabling Kubernetes with Docker Desktop, makes your VM both a Control Plane and (worker) Node.

You administer your Kubernetes cluster using the command-line tool, **kubectl**.

## Objectives

1.  **Turn on Kubernetes with Docker Desktop**

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
    <li>Refer to this link for instructions on enabling Kubernetes on Docker Desktop: <a href="Deploy on Kubernetes with Docker Desktop">https://docs.docker.com/desktop/kubernetes/</a></li>
    <li>If Kubernetes fails to start or you experience an error, you can try the following:</li>
    <ul>
    <li>Restart Docker Desktop</li>
    <li>Restart your VM</li>
    <li>Reset the Kubernetes Cluster</li>
    </ul>
    </ul>
    </details>

2.  **Display a list of nodes running in your cluster using the kubectl command line tool**

    Kubernetes provides a command line tool for communicating with a Kubernetes cluster's control plane, using the Kubernetes API.

    This tool is named **kubectl**.

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
    <li>Use <code>kubectl --help</code> to get a list of commands</li>
    <li>You can see that <code>kubectl get</code> will display one or many resources</li>
    <li>Use <code>kubectl api-resources</code> to get a complete list of supported resources</li>
    <li>So you can use <code>kubectl get nodes</code> to get a list of nodes. Your cluster has a single node.</li>
    </ul>
    </details>
    <br>

## Success Criteria

- Kubernetes is enabled

[Next Challenge >](../1.6/readme.md)
