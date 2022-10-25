# Challenge 1.2 - Repositories

👉 Don't leave your teammates behind! See if anyone else needs a hand before you start a new challenge.

## Overview

Historically, version control has been the first component that teams implement as they start on a project. It is one of the oldest and most well understood components of DevOps. Version control systems allow developers to collaborate and simultaneously contribute to the same codebase. They can also help teams track versions (so code can be rolled back if bad changes are made) and track bugs, work, and testing by the team. Please take a moment to review the [Git Handbook](https://www.githandbook.com/) to understand the basics of version control, focusing on the distributed version control technology, Git.

Make sure you take a look at the [Programming Tasks](https://www.githandbook.com/prog.php) page of the Git Handbook.

## Objectives

Now that we have a basic understanding of version control and Git, lets get some code checked into source control. DevOps best practices can apply to any programming language, so for today we have provided you a simple .NET Core web application to use.

1. Begin by cloning your GitHub repository.

    <details>
    <summary>💡 Tips and Tricks</summary>
    <ul>
    <li>You can use the terminal in Visual Studio Code or your preferred terminal app</li>
    <li>By default, when you clone your repository, Git will automatically create a subfolder for your code. Make sure you are in the correct parent directory.</li>
    <br/>
    Cloning a repository:
    <br/>
    <li>To clone a repository via command line: <code>git clone $URL</code> in the directory you want to copy the repository to.</li>
    <li>To get the <code>$URL</code>, go to your repository in github.</li>
    <li>Select <strong><> Code</strong> which should be a green button.</li>
    <li>In the clone section, click on the copy button to get the url.</li>
    </ul>
    </details>

    <details>
    <summary>📚 Additional Reading including GitHub Desktop Guidance</summary>
    <ul>
    <li>Cloning a repository via the <a href="(https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository">command line</a>) or <a href="https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/cloning-a-repository-from-github-to-github-desktop">GitHub Desktop</a></li>
    <li>If you're using GitHub Desktop, here is documentation on     <a href="https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/committing-and-reviewing-changes-to-your-project">committing</a> and     <a href="https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/pushing-changes-to-github">pushing</a> changes to a repository.</li>
    </ul>
    </details>

2. Next, obtain the code (sample application and ARM template) below and unzip the archive to the local repository:

    [Download Source Code](/2%20-%20DevOps%20with%20GitHub/Resources/Source.zip)

3. Finally, commit the files to your GitHub repository using your preferred Git client.

    <details>
    <summary>💡 Tips and Tricks</summary>
    Committing Files 
    <ul>
    <li>In the command line enter: <code>git add --all</code> - This will add all of the files you just copied to the folder to be be tracked.</li>
    <li>Now we need to commit our changes by typing <code>git commit -am "My first commit"</code></li>
    <li>Finally we need to push to the remote repository in github by doing <code>git push -u</code>. You may see a warning which will provide the full command if this is the first time you are doing this to target the github server.</li>
    </ul>
    </details>

    <details>
    <summary>📚 Additional Reading</summary>
    To 
    <ul>
    <li>If working with the command line, check out these articles on [committing](https://docs.github.com/en/github/committing-changes-to-your-project/creating-and-editing-commits) and [pushing](https://docs.github.com/en/github/using-git/pushing-commits-to-a-remote-repository) changes.</li>
    </ul>
    </details>

## Success Criteria
- Your repo is cloned to your local machine and sync'd with GitHub.com
- The "Application" and "ARMTemplates" folders are at the root of your repository

[< Previous Challenge](../1.1/readme.md) | [Next Challenge >](../1.3/readme.md)

