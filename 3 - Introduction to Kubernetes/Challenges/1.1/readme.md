# Challenge 1.1 - Workstation Setup

## Overview

A smart Cloud Native DevOps or Platform Engineer knows what tools he needs, how to install them and how to use them. Get started with this hackathon by preparing your toolkit.

Windows Subsystem for Linux (WSL), Visual Studio Code, and Docker Desktop enable cloud-native cloud development on Windows.

## Objectives

1.  **Install Windows Subsystem for Linux**

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
    <li>With the latest version of Windows 11, you can install Windows Subsystem for Linux with a single command <code>wsl --install</code>
    </li>
    </ul>
    </details>

2.  **Complete WSL post-setup:**

    - Restart your Virtual Machine if required

    - Use the same (all lowercase) username and password for WSL/Ubuntu as you are using for Windows

3.  **Install required software**

    - Visual Studio Code
    - Docker Desktop
    <br />
    <ul>
    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
    <li>Make sure you install the software on the Windows VM - You might need to exit WSL.</li>
    <li>Chocolatey has been preinstalled on your VM. You can install apps on Windows 11 with Chocolatey. Start a terminal, and run the below commands:<br/>
    <code>choco install vscode --version=1.86.1 -y</code><br/>
    <code>choco install docker-desktop -y</code>
    </li>
    </ul>
    </details>
    </ul>

4.  **Perform Docker Desktop initial setup**

    - **Important**: Log off and back on again
    - You can _continue without signing in_ to Docker Desktop
    - You can also skip any surveys
    - Once Docker Desktop is running, you can close or minimize the window it and continue

## Success Criteria

- Required software is installed and ready for use:
  - Windows Subsystem for Linux
  - Docker Desktop
  - Visual Studio Code

<details>
<summary>📚 Additional Reading (Optional)</summary>
<ul>
<li><a href="https://learn.microsoft.com/windows/wsl/about">What is the Windows Subsystem for Linux?</a></li>
<li><a href="https://docs.docker.com/desktop/">Overview of Docker Desktop</a></li>
<li><a href="https://learn.microsoft.com/windows/package-manager/">Windows Package Manager</a></li>
</ul>
</details>
<br />

[Next Challenge >](../1.2/readme.md)
