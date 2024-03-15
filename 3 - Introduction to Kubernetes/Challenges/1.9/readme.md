# Challenge 1.9 - Scale Your App

When load on your application grows or shrinks you can scale your application.

1. **Increase the number of replicas from 1 to 3**

<details>
<summary>💡 Tips and Tricks</summary>
<ul>
<li>You can update your deployment manifest to increase the number of replicas.</li>
<li>Refer to <a href="deployment.yaml">deployment.yaml</a> for a sample deployment manifest.</li>
</ul>
</details>

2. **Stop a container image to see how Kubernetes responds**

<details>
<summary>💡 Tips and Tricks</summary>
<ul>
<li>You can list running containers with <code>docker container list</code> and stop a container with <code>docker container stop &lt;container id&gt;</code>.</li>
<li>Run <code>docker container list</code>again, was your stopped container replaced?</li>
</ul>
</details>

3. **Tear down your deployment when you're done**

<details>
<summary>💡 Tips and Tricks</summary>
<ul>
    <li>For example: <code>kubectl delete -f deployment.yaml</code></li>
</ul>
</details>

## Next Steps

You can continue you learning journey with free resources:

- [Play with Kubernetes](https://labs.play-with-k8s.com/)
- [Play with Kubernetes classroom](https://training.play-with-kubernetes.com/)
- [Kubernetes Workshop](https://training.play-with-kubernetes.com/kubernetes-workshop/)
