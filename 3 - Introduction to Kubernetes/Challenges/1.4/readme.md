# Challenge 1.4 Update your Container

## Overview

As part of application development and testing as a Cloud Native DevOps Engineer, you will test container app updates locally and create new container versions.

## Objectives

1.  **Update your container app, by editing the text returned on line `10`**

- Edit the _mycontainerapp.py_ file and change the text inside the quotes on line 10. For example: "Welcome to Wayne's container app!"
- Make sure you save the file!

2.  **Build a new version of your container image**

    <details>
        <summary>💡 Tips and Tricks</summary>
        <ul>
            <li>You can add a new container image version by specifying a new version tag: <code>docker build -t mycontainerapp:v2 .</code></li>
            <li>In this example <code>v2</code> is the image version.</li>
        </ul>
    </details>

3.  **Run the new version of your container**

    <details>
        <summary>💡 Tips and Tricks</summary>
        <ul>
            <li>You can use: <code>docker run</code> to run your container</li>
            <li>you can specify the version along with the container image name: <code>docker run -d -p 8080:80 --name mycontainerapp mycontainerapp:v2</code></li>
            <li><a href="https://docs.docker.com/engine/reference/commandline/run/">docker run</a></li>
        </ul>
    </details>

4.  **View your running containerized app**

    <details>
        <summary>💡 Tips and Tricks</summary>
        <ul>
            <li>If you exposed port 8080 on the container host, you can access your app on <code>http://localhost:8080</code> in your browser</li>
        </ul>
    </details>

5.  **Stop your running container and remove it**

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
    <li>You can list running containers with the command: <code>docker container list</code></li>
    </li>You can stop a running container with the command:<code>docker container stop &lt;container id&gt;</code></li>
    </li>Or you can force remove the container with: <code>docker container remove --force &lt;container id&gt;</code></li>
    </details>

<details>
<summary>📚 Additional Reading (Optional)</summary>
<ul>
<li><a href="https://docs.docker.com/engine/reference/builder/">Dockerfile reference</a></li>
<li><a href="https://docs.docker.com/engine/reference/commandline/build/">docker build</a></li>
<li><a href="https://docs.docker.com/engine/reference/commandline/run/">docker run</a></li>
</ul>
</details>
<br />

## Success Criteria

- You created two versions of your container image
- You ran a specific container image version
- You stopped and removed your running container

[Next Challenge >](../1.5/readme.md)
