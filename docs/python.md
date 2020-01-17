# Anaconda Python

Anaconda is a pre-packaged Python distribution for scientific users.
Unlike other Python distributions, this means that most additional functionality that we need to do numerical computing, statistics, plotting and the like come already installed - which saves us a lot of time.

## Installing Anaconda Python for Mac

Install using Homebrew.
In your terminal type the following and press return:

``` bash
brew cask install anaconda
```

During the installation process you might be the following output asking you to review the license agreement:

``` bash
Welcome to Anaconda3

In order to continue the installation process, please review the license
agreement.
Please, press ENTER to continue
>>>
...
Do you approve the license terms? [yes|no]
```

Press `Return` until you reach the end, and type 'yes'.

### Making Anaconda Python Accessible from the Terminal.

By default, Mac uses a default install of Python inside the terminal.
We want to change that.

Enter the following in the terminal and press `Return`:

``` bash
export PATH="/usr/local/anaconda3/bin:$PATH"
```

Then, reload the terminal environment:

```
source .bash_profile
```

Now proceed to [verify your install](#verify-installation)

## Installing Anaconda Python for Linux and Windows

First, we need to download the Anaconda Bash Script (a file that will install things for us). Enter the following into the terminal:

``` bash
curl -O https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh
```

Run the Anaconda Script by entering the following into the terminal:

``` bash
bash Anaconda3-2019.10-Linux-x86_64.sh
```

As this script runs through, review and accept the license agreement.
To do this press `Return` until you reach the end, and type 'yes'.

After you agree to the license, you will be prompted to choose the location of the installation:

``` bash
Anaconda3 will now be installed into this location:
/home/lachlan/anaconda3

  - Press ENTER to confirm the location
  - Press CTRL-C to abort the installation
  - Or specify a different location below

[/home/lachlan/anaconda3] >>>

```

Use the default.

The installation will continue - it does take some time, so be patient.

Once the installation is complete, you will get the following output:

``` bash
...
installation finished.
Do you wish the installer to prepend the Anaconda3 install location
to PATH in your /home/lachlan/.bashrc ? [yes|no]
>>> 
```

Type 'yes'.

Now we need to refresh our terminal settings, so type the following and press return:

```
source ~/.bashrc
```

Now proceed to [verify your install](#verify-installation).

!!! tip "Updating the Anaconda Install"
    In the future, if you want to find the most up to date Anaconda installer, go to the following website:

    https://repo.anaconda.com/archive/

    and find the most recent Anaconda3 installer for Linux-x86_64

## Verify Installation

To verify that the correct version of Python has been installed, usually we would follow the `programName --version` logic from before:

``` bash
python --version
```

which yields:

``` bash
Python 3.7.4
```

which tells us that Python is installed. 
But, because most operating systems thesedays have some version of Python installed, this doesn't guarantee that the Anaconda version is available for us to use from the terminal.

To check, initiate Python by entering the following into a terminal and pressing `Return`:

``` bash
python
```

You should now see something like:

``` bash
Python 3.7.4 (default, Aug 13 2019, 20:35:49)
[GCC 7.3.0] :: Anaconda, Inc. on linux
Type "help", "copyright", "credits" or "license" for more information.
```

where the operating system name should be different for Mac users.

Now we see that the terminal is using the Anaconda version as we wanted.
To quit the Python session we just opened, type the following at the `>>>`:

``` python
>>> quit()
```

and you will return to your terminal. 
This was successful if you now see a `$` rather than the `>>>`.

!!! tip "Python 2 vs Python 3"
    Python 2 and 3 are incompatible in syntax. If you had Python 2 previously installed on your machine, you might have seen `Python 2.x.x` above. In that case try typing

    ```python3 --version```

    instead. Now you should see a message like the one above and are good to go for the course.
