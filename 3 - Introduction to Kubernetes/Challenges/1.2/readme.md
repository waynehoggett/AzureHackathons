# Challenge 1.2 - Run your first container

## Overview

**Containers** are a building blocks of modern applications. A container _contains_ everything an application needs to run bundled into a single container image.

**Container images** are merely a container in an offline state. Container images are commonly pushed to and stored in a container **registry**.

Container images are grouped in a registry into one or more **repositories**. The images are then pulled from the registry before being run.

In this challenge you will pull an existing container image from the Docker Hub container public registry and run it locally.

Docker hub is the default registry used Docker desktop.

## Objectives

1.  **Start Docker Desktop and switch to Linux containers (if required).**

    <details>
        <summary>💡 Tips and Tricks</summary>
        <ul>
        <li>⚠️ Make sure you log out and log back in after installing Docker Desktop</li>
        <li>If Docker Desktop doesn't start automatically, you can start Docker Desktop from the Start Menu, or run: <code>"C:\Program Files\Docker\Docker\Docker Desktop.exe"</code></li>
        <li>You don't need a docker account for this hackathon, you can <em>continue without signing in.</em></li>
        <li>You can switch to Linux Containers by right-clicking on the Docker Desktop icon in the system tray (which may be hidden) and select "Switch to Linux containers". If "Switch to Windows Containers" is displayed in the menu, you're already using Linux containers.</li>
        </ul>
        </details>

2.  **Pull an existing container image from the Docker Hub container registry, using the below command:**

    - In the terminal, run:
      <code>docker pull docker/welcome-to-docker</code>

    <details>
     <summary>💡 Tips and Tricks</summary>
     <ul>
     <li>The <code>docker pull</code> command pulls container images from a registry. If you don't specify a registry, the Docker Hub is used. 
     </li>
    <li><code>docker pull</code> is shorthand for <code>docker image pull</code>. 
     </li>
    <li>In this command, the container repository (within the registry) is <code>docker</code>, and the container image name is <code>welcome-to-docker</code>.
     </li>
    <li>A version of the image is not specified, so the latest version is pulled, so the equivalent command is <code>docker/welcome-to-docker:latest</code>.
     </li>
     </ul>
     </details>

3.  **Run your first container, using the below command:**

    <code>docker run -d -p 8080:80 --name welcome-to-docker docker/welcome-to-docker</code>

    <details>
     <summary>💡 Tips and Tricks</summary>
     <ul>
     <li>If prompted, allow Docker to access public and private networks through Defender Firewall.</li>
     <li>The <code>docker pull</code> command pulls container images from a registry. If you don't specify a registry, the Docker Hub is used. 
     </li>
    <li><code>docker pull</code> command is shorthand for <code>docker image pull</code>. 
     </li>
    <li>In this command, the container repository (within the registry) is <code>docker</code>, and the container image name is <code>welcome-to-docker</code>.
     </li>
    <li>A version of the image is not specified, so the latest version is pulled, so the equivalent command is <code>docker/welcome-to-docker:latest</code>.
     </li>
     </ul>
     </details>

4.  **View your running containerized app**

    Open http://localhost:8080 in your browser to see the app running.

5.  **Stop your running container and remove it**

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
    <li>You can list running containers with the command: <code>docker container list</code></li>
    </li>You can stop a running container with the command:<code>docker container stop <container id></code></li>
    </li>Or you can force remove the container with: <code>docker container remove --force <container id></code></li>
    </details>

## Success Criteria

- You pulled a container image from Docker Hub
- You ran the container image
- You deleted/removed the container

<details>
<summary>📚 Additional Reading (Optional)</summary>
<ul>
<li><a href="https://www.docker.com/resources/what-container/">What is a Container?</a></li>
<li><a href="https://docs.docker.com/engine/reference/commandline/pull/">docker pull</a></li>
</ul>
</details>
<br />

[Next Challenge >](../1.3/readme.md)
