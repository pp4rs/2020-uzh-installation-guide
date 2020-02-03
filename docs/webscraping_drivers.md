<!-- markdownlint-disable MD024 -->
<!-- see https://github.com/DavidAnson/markdownlint for code to enable or disable rules -->
# Web Scraping Using an Automated Browser

Sometimes when we scrape the web, we need to automate our computer to open a web browser to gather information from each page.
This is especially true when the site we want to scrape has content that is loaded dynamically with javascript.

We will install one package to help us here: Chromedriver

Installing this stuff is operating system specific, hence so are the instructions below.

## Mac Users

### Google Chrome

We need an up to date version of the web browser Google Chrome.
We will install it via Homebrew.
Enter the following into the terminal and hit `Return`:

``` bash
brew cask install google-chrome
```

Verify the install:

``` bash
google-chrome --version
```

which should yield output similar to:

``` bash
Google Chrome 79.0.3945.117
```

### Chromedriver

Now we install some software than can control a Google Chrome browser.
It is called Chromedriver.
Again, install via Homebrew:

``` bash
brew cask install chromedriver
```

Verify your install.

``` bash
chromedriver --version
```

The expected output is `ChromeDriver 79.0.3945.36 ....`.

It **is important** that the version numbers (i.e the '79' part) match between Google Chrome and Chromedriver.

## Linux Users

### Google Chrome

We need an up to date version of Google Chrome and some additional linux packages.

First add the additional linux packages by entering the following into the terminal:

``` bash
sudo apt-get install libxss1 libappindicator1 libindicator7
```

Now let's download the latest stable version of Google Chrome using the terminal:

``` bash
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
```

And now install it:

``` bash
sudo dpkg -i google-chrome*.deb
sudo apt-get install -f
```

Verify the install:

``` bash
google-chrome --version
```

which should yield output similar to:

``` bash
Google Chrome 79.0.3945.117
```

### Chromedriver

Install `xvfb` by pasting the following into a terminal and then pressing `Return`:

``` bash
sudo apt-get install xvfb
```

This will allow Chrome to run 'headless' - i.e. without popping up a browser.

Install Chromedriver by pasting the following and then pressing `Return`:

``` bash
sudo apt-get install unzip

wget -N https://chromedriver.storage.googleapis.com/79.0.3945.36/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
chmod +x chromedriver

sudo mv -f chromedriver /usr/local/share/chromedriver
sudo ln -s /usr/local/share/chromedriver /usr/local/bin/chromedriver
sudo ln -s /usr/local/share/chromedriver /usr/bin/chromedriver
```

Now verify the installation was successful:

``` bash
chromedriver --version
```

The expected output is `ChromeDriver 79.0.3945.36 ....`.

It **is important** that the version numbers (i.e the '79' part) match between Google Chrome and Chromedriver.

!!! tip "Hat-tip"
    We borrowed quite liberally from Christopher Su to for instructions on [installing Chrome and Chromedriver](https://christopher.su/2015/selenium-chromedriver-ubuntu/).

## Windows Users

We struggled to get webscraping to work inside the Windows Subsytem for Linux set up we have set up.
As an alternative, we we install a small python installation into your 'normal' Windows environment and run from there.

Let's proceed as follows:

### Install Miniconda

Miniconda is an installation of Python plus a smaller subset of packages.
We will install this because it is lighter, and provides most of what is necessary for this module.

* Go to the Miniconda website [here](https://docs.conda.io/en/latest/miniconda.html)
* Download the Python 3.7 installer
* Run it, it will be 'clicky' so you will need to click forward on some boxes
    * Accept most of the defaults, **and** 
    * When it asks you whether you want to **add Anaconda/Miniconda to my PATH environment variable - click yes**
* When the install is complete, Open the Windows terminal into 'Windows Powershell' - type `python --version` and you should see 'Python 3.7.4' be printed out

Now we have to add some additional packages to your Windows version of Python.
We will use pip to install these:

``` python
pip install selenium pandas jupyter
```

### Google Chrome and Chromedriver

*   Install the latest version of Google Chrome from [here](https://www.google.com/chrome/)
    * Version 79.X.X is the latest stable version
*   Download the windows version of Chromedriver from [here](https://chromedriver.chromium.org/downloads).
*   Extract the contents from the zip file, and place them in a new directory `C:\chromedriver`
    * Inside that folder, you should have one file `chromedriver.exe`
*   Add the directory `C:\chromedriver` to your PATH.
    * See the box below for instructions
*   If this went successfully, open a **new** Windows Terminal session and then open Powershell, and enter `chromedriver --version`, you should get output that looks like `ChromeDriver 79.0.XXXX.XX`

!!! tip "Adding Directory to PATH (for Windows 8 and 10)"

    You will need local administration rights for your computer, but you should have these on your personal computers or ones owned by the Department.

    Right-click on Computer. Then go to "Properties" and select the tab "Advanced System settings". Choose "Environment Variables" and select "Path" from the list of system variables.

    Choose 'New' and add the path to the .exe file:
    
    ```
    C:\Path\to\program.exe
    ```

    and make sure the existing stuff rest remains as it is.

    Hence to add chromedriver, if you followed the instructions above, this means adding `C:\chromedriver`.

    Click on OK as often as needed.