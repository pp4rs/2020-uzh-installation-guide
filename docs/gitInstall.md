<!--
TODO: Should we add a GIT GUI to installation guide?
-->

# Installing Git and Setting Up Accounts

Git is a Version Control System (VCS) that has gained a lot of traction among the programming community.
We will want to use version control to keep track of the files we write, and the changes we make to them.

## Account Creation

During the course we will show you how to use [GitHub](https://www.github.com) to host some of your work and do code related project management. You will need to set up an account:

<!-- During the course we will show you how to host some of your work on GitHub and the Economics Department's internal GitLab server.
You will need to setup accounts for each of these: -->

* Please [register](https://github.com/join) for a [GitHub](https://github.com/) account
* When choosing a username we recommend not using a name that includes an employer or university in case you move later on
    - i.e. 'johnsmith' or 'johnsmith86' are OK, 'johnsmithUZH' probably not
<!-- *   Sign into the [Economics Department's GitLab server](https://econgit.uzh.ch/). Use your UZH shortname and your web-access password (same as for OLAT). You will need to access "Econ Git" while on-site at UZH or whilst using a UZH VPN if you are off-site. -->

<!-- !!! danger "Non-UZH Economics Students"
    The UZH Department of Economics has a internal Git server that may be hard for you to access.
    It looks and behaves almost identically to [GitLab](https://about.gitlab.com/).
    We recommend that you register for an account here, so you can follow along in class. -->

## Mac Users

### Installing Git 

We will install Git using Homebrew. Enter the following lines of code into your terminal:

``` bash
brew install git
brew link --force git
```

Then close and reopen the terminal. Now [Verify your installation](#verifying your install)


### Autocompletion

When we code we want to be lazy - we don't always want to write out the whole line of code we want to enter, and would prefer the computer to autocomplete our line of code for us.
The OSX terminal doesn't have this autocompletion by default, so let's add it using our trusty friend Homebrew.

Open a terminal and enter:

``` bash
brew install auto-completion
```

This installs 'bash completion' into a file `/usr/local/etc/bash_completion.d`.

To make the autocompletion work, type the following into your terminal:

```bash
echo "[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion" >> ~/.bash_profile
```

And restart your terminal session:

``` bash
source ~/.bash_profile
```

### Checking Autocomplete works

Now you can autocomplete by pressing `tab` twice after a command.
We will demonstrate this in class.

For now, enter the following into you terminal and press `tab` twice (which we depict as `[tab] [tab]`) below:

``` bash
git [tab] [tab]
```

which will then show:

```bash
$ git [tab] [tab]
add            blame          cherry-pick    config         format-patch   gui            merge          push           repack         rm             stage          whatchanged
am             branch         citool         describe       fsck           help           mergetool      range-diff     replace        send-email     stash          worktree
apply          bundle         clean          diff           gc             init           mv             rebase         request-pull   shortlog       status
archive        checkout       clone          difftool       gitk           instaweb       notes          reflog         reset          show           submodule
bisect         cherry         commit         fetch          grep           log            pull           remote         revert         show-branch    tag
```

<!--  OLD autocompletion guide - let's hope the brew one works
Also install the command-line auto-completion script. For this go to [this website](https://github.com/git/git/raw/master/contrib/completion/git-completion.bash). You should now see a the text file starting with

```
# bash/zsh completion support for core Git.
#
# Copyright (C) 2006,2007 Shawn O. Pearce <spearce@spearce.org>
# Conceptually based on gitcompletion (http://gitweb.hawaga.org.uk/).
# Distributed under the GNU General Public License, version 2.0.
```

save this file as `git-completion.bash` to your user folder by pressing `CMD+s`. If you want to know where your user folder is, open a terminal and type ```pwd```. For Uli it is for example under `/Users/ubergmann`.

If you use Safari, make sure to save the file as `Page Source` and don't append a `.txt` to its filename (Chrome does this automatically). If everything went right, you can now type `ls` in your terminal window and should see `git-completion.bash` there between other files. -->


## Linux Users

Git should be installed already for you. 
To check if it is, enter the following in a terminal:

``` bash
git --version
```

If you get a bunch of numbers (ideally starting with 2.15) or higher - you are good to move on.

If not, install it by entering the following into the command line:

``` bash
sudo apt-get install git
```

Once complete, [verify your install](#verifying-your-install).

## Windows Users

Git will be already installed inside your Ubuntu terminal.
Verify this, by following [these instructions](#verifying-your-install).

## Verifying your install

<!-- We will need to make Git accessible from the command line. Windows and Mac users will need to follow the steps on the page "Modifying Path Settings." Linux users will already have git accessible from the command line. -->

To verify your installation, type the following command in a terminal and press the return key:

```bash
       git --version
```

You should get an output that looks like:

```bash
        git version 2.18.0
```

Ensure that you have a version greater than `2.15.0` installed.
