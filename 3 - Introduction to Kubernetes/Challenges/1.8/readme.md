# Challenge 1.8 - Publish your Application

## Overview

A **Service** is used to expose a network application that is running as one or more Pods in your cluster.

The **NodePort** service type exposes a Service on each Node's IP at a static port (the NodePort).

## Objectives

1.  **Update your deployment with a service**

    Make your application accessible from outside the cluster by creating a NodePort Service.

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
    <li><a href="https://kubernetes.io/docs/concepts/services-networking/service/">Services</a></li>
    <li>Refer to <a href="deployment.yaml">deployment.yaml</a> for a sample deployment manifest</li>
    <li>In this manifest, we have two objects, separated by the <code>---:</code></li>
    <li>A NodePort service, which will route traffic from port 30001 on your host to port 3000 inside the pods it routes to, allowing you to reach your Todo app from the network.</li>
    </ul>
    </details>

2.  **Get a list of services with kubectl**

      <details>
         <summary>💡 Tips and Tricks</summary>
         <ul>
           <li>You can list your Kubernetes services with <a href="https://kubernetes.io/docs/reference/kubectl/quick-reference/#viewing-and-finding-resources">Viewing and finding resources</a></li>
           <li>For example: <code>kubectl get services</code></li>
         </ul>
      </details>

3.  **Get a list of services with kubectl**

      <details>
         <summary>💡 Tips and Tricks</summary>
         <ul>
           <li>You can list your Kubernetes services with <a href="https://kubernetes.io/docs/reference/kubectl/quick-reference/#viewing-and-finding-resources">Viewing and finding resources</a></li>
           <li>For example: <code>kubectl get services</code></li>
         </ul>
      </details>

4.  **View your app using the service**

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
        <li>Access your app using the NodePort, for example: <code>http://localhost:30001</code> in your browser</li>
    </ul>
    </details>

## Success Criteria

- You updated your deployment with a service
- You get a list of services using kubectl
- You forwarded a port from the host to your service
- You accessed your application using the forwarded port

[Next Challenge >](../1.9/readme.md)
