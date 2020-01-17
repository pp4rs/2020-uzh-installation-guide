# Command Line Tools

A command-line interface or command language interpreter (CLI), also known as a terminal, is a means of interacting with a computer program where the user issues commands to the program in the form of successive lines of text.

Throughout the course we will emphasize use of the terminal and executing commands within it as our modus operandi.

## Mac Users

A command line interface comes already installed with OSX.

You will need to install some other software from the terminal throughout the course, so it will be useful to install some additional "command line tools" now.

### Opening a Terminal Session

To open a terminal session:

* Open spotlight with `cmd + space`
* Type in 'terminal'
* When the terminal appears, open it.

### Installing New Tools for the Terminal

#### The X-code Tools

We want to install 'X-code command line tools'. Copy and paste the following and press `Return`

``` bash
xcode-select --install
```

If you get a message that the command line tools are already installed, you can continue to the next step.

#### Homebrew Package Manager

Homebrew is a package manager for Mac.

Install Homebrew by opening a terminal and pasting the following command:

``` bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Verify that Homebrew installed correctly, enter the following into your terminal:

``` bash
brew doctor
```

And you should see the following output:

``` bash
Your system is ready to brew
```

Before continuing, lets be sure everything in Homebrew is up to date by entering the following:

``` bash
brew upgrade
```

### Installing Packages with Homebrew

Now we can use homebrew to easily install software.  We need some basic system tools for some of the programs we will install later.

In particular we need:

* `libxml2`
* `openssl`
* `libgit2`

Most of these are already installed, but we need updates of these packages.
For each of these packages enter:

``` bash
brew reinstall pkg-name
```

i.e. `brew reinstall libxml2`.

If you get a message that the package you are trying to reinstall is not yet installed, try `brew install pkg-name` instead.

### Linking Packages to a Terminal Session

We need to ensure that our terminal session has access to what we installed.
To do this we add some extra lines to our bash profile (we will discuss what this means in class - do what we say for now):

``` bash
echo 'export PATH="/usr/local/opt/libxml2/bin:$PATH"' >> ~/.bash_profile
echo 'export PATH="/usr/local/opt/openssl/bin:$PATH"' >> ~/.bash_profile
source .bash_profile
```

## Linux & Windows Users

* Linux Users: Open a terminal session with `Ctrl` + `Alt` + `T`.
* Windows Users: Open the Ubuntu Terminal as we described [here](/windows-wsl/#installing-windows-terminal)

Copy the following command into terminal and press `Return`:

```bash
sudo apt-get update
sudo apt-get install libcurl4-gnutls-dev librtmp-dev
```

After the installation succeeded successfully repeat this one-by-one with the following two other commands:

```bash
sudo apt-get install libxml2-dev
sudo apt-get install libssl-dev
sudo apt-get install gdebi-core
```

<!-- markdownlint-capture -->
<!-- markdownlint-disable -->
!!! tip "Windows Users: Copy and Paste"
    The 'traditional' `Ctrl + C` and `Ctrl + v` doesn't work with your terminal because as `Ctrl + Key` commands have a special meaning.
    To save manually writing stuff in there's two alternatives:

    * Use the 'Linux' copy and paste commands: copy is `Ctrl + Shift + C` and paste is `Ctrl + Shift + V`.
    * Highlight the text with you cursor, and then in the terminal use your mouses right-click to paste it in.
<!-- markdownlint-restore -->

<!-- markdownlint-capture -->
<!-- markdownlint-disable -->
!!! tip "Windows Users: Library Installation"
    At some point in the install process you may see a screen like this one:
    
    <img src="../img/misc-windows/96-lib-installer.jpg" class="center" height = "500">

    Here you need to make a choice, which you do by using the left and right arrows followed by `Return`.
    Lachlan chose, 'No' - but you can safely choose yes without your computer burning down.

    Whenever you get these kinds of screens, you can scroll up and down with the up and down buttons if needed and make decisions by selecting a choice as described above.
<!-- markdownlint-restore -->
