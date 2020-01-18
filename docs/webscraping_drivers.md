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

## Linux & Windows Users

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
