# Challenge 1.3 Create your own Container Image

## Overview

Cloud Native DevOps Engineers define pipelines to deliver containerized applications to environments for development, testing and production.

Container image creation is a crucial step in modern DevOps pipelines.

In this challenge, you will create a simple Python Flask web app and containerize it.

## Objectives

1.  **Create a folder for your containerized app and open the newly created folder in Visual Studio Code**

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
    <li>One option to create a new directory on Windows to run the command (from the intended parent directory): <code>mkdir mycontainerapp</code></li>
    </li>You can open the newly created directory in Visual Studio Code is to run (from the parent directory): <code>code mycontainerapp</code></li>
    <li>⚠️ If prompted to trust the authors, select <strong>I trust the authors</strong></li>
    </details>
    <br>

2.  **Create a new python file named `mycontainerapp.py` using the following code:**

    #### **`mycontainerapp.py`**

    ```python
    # Import the necessary modules
    from flask import Flask

    # Define the Flask app
    app = Flask(__name__)

    # Define the view
    @app.route('/')
    def home():
        return "Welcome to your first container app."

    # Run the app on port 80, with debug
    if __name__ == '__main__':
        app.run(host='0.0.0.0', port=80)
    ```

    ⚠️ Indentation is used to control the flow of application code in Python.Make sure it is correct. You can install the Python extension for Visual Studio Code to help with syntax checking.

3.  **Create the build instructions for your container image**

    A Dockerfile is a set of instructions used to build your container image.

    #### **`Dockerfile`**

    ```Dockerfile
    FROM python:3

    RUN pip install flask

    COPY mycontainerapp.py mycontainerapp.py

    CMD [ "python", "mycontainerapp.py" ]
    ```

    <details>
        <summary>💡 Tips and Tricks</summary>
        <ul>
            <li>⚠️ A Dockerfile does not have a file extension or period character '.'.</li>
            <li> The FROM instruction sets the base image for the container, we're using a base image that contains python.</li>
            <li>The RUN instruction executes commands to build the container image, we're installing flask</li>
            <li>The COPY instruction copies files to the container image. We're copying our flask app.</li>
            <li>The CMD instruction specifies the default command that will be executed when you start a container from the container image.</li>
        </ul>
    </details>

4.  **Build your container image**

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
    <li>You can star a terminal in Visual Studio Code to run commands, or you can change into the directory of your app using the command (from the parent directory): <code>cd .\mycontainerapp\</code></li>
    <li>You can build your container image with the command: <code>docker build -t mycontainerapp .</code></li>
    <li>If you receive an error, make sure Docker Desktop is running.</li>
    <ul>
    <li>In the above -t is the tag parameter, it is used to name specify the name and version of your container image. If you don't specify a version, latest is used, to the value <code>mycontainerapp</code> is equivalent to <code>mycontainerapp:latest</code>.</li>
    <li>The period "." at the end of the command indicates the working directory. The period indicates to use the current directory.</li>
    </ul>
    </ul>
    </details>

5.  **Run your container**

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
    <li>You can run your container using the following command: <code>docker run -d -p 8080:80 --name mycontainerapp mycontainerapp</code></li>
    <ul>
    <li>The <code>-d</code> parameter indicates to run the container detached from the terminal, returning the control of the terminal back to you. If you run without the <code>-d</code> parameter, your terminal becomes an interactive terminal inside the container. Which is useful for troubleshooting.</li>
    <li>The<code>-p 8080:80</code> parameter exposes a port on the container to the container host. Supplying <code>8080:80</code> will expose port 80 on the container as port 8080 on the container host. This allows you to view your app on port 8080 locally.</li>
    <li>The <code>--name</code> parameter is used to provide the name of the container image</li>
    <li>The <code>mycontainerapp</code> value at the end of the command indicates the container image to use.</li>
    </ul>
    </ul>
    </details>

6.  **View your running containerized app**

    - If you exposed your container app as port 8080: Open http://localhost:8080 in your browser to see the app running.
    - If you see the old container image webpage, force refresh the web page `CTRL+F5`

7.  **Stop your running container and remove it**

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
    <li>You can list running containers with the command: <code>docker container list</code></li>
    </li>You can stop a running container with the command:<code>docker container stop &lt;container id&gt;</code></li>
    </li>Or you can force remove the container with: <code>docker container remove --force &lt;container id&gt;</code></li>
    </details>

## Success Criteria

- You defined the instructions to build a container app using a dockerfile and source code
- You built your container image
- You ran and tested your container app

<details>
<summary>📚 Additional Reading (Optional)</summary>
<ul>
<li><a href="https://docs.docker.com/engine/reference/builder/">Dockerfile reference</a></li>
<li><a href="https://docs.docker.com/engine/reference/commandline/build/">docker build</a></li>
<li><a href="https://docs.docker.com/engine/reference/commandline/run/">docker run</a></li>
</ul>
</details>
<br />

[Next Challenge >](../1.4/readme.md)
