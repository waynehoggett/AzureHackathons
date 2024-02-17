# Challenge 1.6 - Deploy your first pod

## Overview

All containers in Kubernetes are scheduled as **Pods**, which represent a set of running containers on your cluster.

All Kubernetes objects can and should be described in **Manifests**. A manifest is a specification of a Kubernetes API object in JSON or YAML format. YAML is most common and recommended. These files describe all the components and configurations of your Kubernetes app, and can be used to easily create and destroy your app in any Kubernetes environment.

## Objectives

1. **Install the Kubernetes extension in Visual Studio Code**

   - Install using the Extensions panel, or run `code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools`

1. **Deploy a pod consisting of just one container running the container image created earlier:**

   a. **Create a manifest describing the desired state of your pod**

      <details>
      <summary>💡 Tips and Tricks</summary>
      <ul>
      <li><a href="https://kubernetes.io/docs/concepts/cluster-administration/manage-deployment/">Managing Kubernetes Resources</a></li>
      <li>Refer to <a href="pod.yaml">pod.yaml</a> for a sample manifest</li>
      </ul>
      </details>

   b. **Deploy your pod using kubectl**

      <details>
         <summary>💡 Tips and Tricks</summary>
         <ul>
            <li>You can manage your Kubernetes application lifecycle with <a href="https://kubernetes.io/docs/reference/kubectl/cheatsheet/#kubectl-apply">kubectl apply</a></li>
            <li>For example: <code>kubectl apply -f pod.yaml</code></li>
         </ul>
      </details>

   c. **Get a list of pods using kubectl**

      <details>
         <summary>💡 Tips and Tricks</summary>
         <ul>
            <li><a href="https://kubernetes.io/docs/reference/kubectl/cheatsheet/#viewing-and-finding-resources">Viewing and finding resources with Kubectl</a></li>
            <li>For example: <code>kubectl get pods</code></li>
         </ul>
      </details>

1. **Tear down your pod**

   <details>
      <summary>💡 Tips and Tricks</summary>
      <ul>
         <li><a href="https://kubernetes.io/docs/reference/kubectl/cheatsheet/#deleting-resources">Deleting resources with Kubectl</a></li>
         <li>For example: <code>kubectl delete -f pod.yaml</code></li>
      </ul>
   </details>

## Success Criteria

- You deploy pod
- You tear down the pod

[Next Challenge >](../1.7/readme.md)
