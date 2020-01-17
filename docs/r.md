# R and RStudio

R is a language for statistical computing and graphics.
R's use in the data science and econometrics community has taken off over recent years and (at a bare minimum) should be considered as an open source replacement to Stata.

RStudio provides an easy to work with graphical interface to R, and its format should feel familiar to Stata and Matlab users.

## Installing R for Mac Users

Go to the [R homepage](https://cran.r-project.org/) and download the installer for your operating system.

The current version for Mac and Windows is `R version 3.6.2`.

Once you have installed R, [verify your install](#verifying-your-install-of-r-all-users).

!!! tip "Why Not Install via Homebrew?"
        There is conflicting views on Homebrews installation of `R`.
        Because we haven't tried it to ensure no problems will emerge, we recommend going with the installation based on the CRAN distributed package.

## Installing R for Linux & Windows Users

First, we need to add a repository so that our operating system knows where to install the most recent version of `R` from.

Enter the following into the terminal and press `Return`:

```bash
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'
```

Now, update to get the package manifests from the new repository:

```bash
sudo apt-get update
```

**Note:** if you are using a different version of Linux or Ubuntu - i.e. not Ubuntu 18.04 LTS, check out [this site](https://cran.r-project.org/bin/linux/) to correctly modify the entry above. 

We can now install `R` as from the terminal by entering the following:

```{bash}
sudo apt-get install r-base r-base-dev
```

Install the multi-threaded OpenBlas library to get higher performance for linear algebra operations:

```{bash}
sudo apt-get install libopenblas-base
```

Now, [verify your install](#verifying-your-install-of-r-all-users).


!!! warning "R on WSL Ubuntu vs. R on native Windows"
        Even if you already have a version of `R` installed on your Windows machine, you need to install `R` inside the WSL Ubuntu 18.04 environment we have set up. 
        Your Ubuntu terminal cannot see everything you have on your native Windows installation.


## Verifying your Install of R - All Users

Open a terminal and enter:

```bash
R --version
```

followed by pressing `Return`. The expected return begins with:

```bash
R version 3.6.x (2019-xx-xx) -- "Some Funky Name"
```

Now proceed to install RStudio.

## Installing RStudio for Mac Users

We can install RStudio with Homebrew:

``` bash
brew cask install rstudio
```

To see if it installed correctly, try and open RStudio from spotlight - there's not simple verification from the terminal.

## Installing RStudio for Linux Users

Download the Latest Version of RStudio:

``` bash
wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.5033-amd64.deb
```

Install it:

```bash
sudo gdebi rstudio-1.2.5033-amd64.deb
```
To see if it installed correctly, try and open RStudio from the GNOME menu - there's not simple verification from the terminal.

## Installing RStudio for Windows Users

Using RStudio together with the R that we installed into our WSL Ubuntu setup is a little trickier - because we don't have access to a graphical interface.

The trick will be to install the server version of RStudio. 
It may sound slightly daunting - but it is actually quite easy!

First, we download the most recent version of RStudio Server for Ubuntu 18 (see [here](https://rstudio.com/products/rstudio/download-server/debian-ubuntu/)).
Enter the following into your terminal and press `Return`:

```bash
wget https://download2.rstudio.org/server/bionic/amd64/rstudio-server-1.2.5033-amd64.deb
```

Now install it by entering this command and hitting `Return`:

``` bash
sudo gdebi rstudio-server-1.2.5033-amd64.deb
```

Now that we have RStudio installed on our subsystem, how can we use it?

In the Ubuntu terminal enter the following text and press `Return`:

```bash
sudo rstudio-server start
```

Now open a web browser, and go to the following address:

```bash
http://localhost:8787/
```

which will take you to a log in page. 

Log in using the username and password for your Ubuntu terminal that we set up at the beginning.

After logging in successfully you have access to the RStudio that you installed in your Ubuntu subsystem.

To log out, click on the log out button in the top right corner.

To stop the RStudio server from running (logging out doesn't stop it), enter `rstudio stop` into your terminal.

## Additional R Packages - All Users

We will need some additional libraries to conduct our statistical analysis. Proceed as follows:

*   Open RStudio
*   In the **console**, copy and paste the following:

```r
to_install <-c( "reshape", "rmarkdown",
                "plm", "Hmisc", "sandwich",
                "Ecdat", "stargazer", "knitr",
                "httr", "rvest", "xml2",
                "xtable","tidyverse", "AER",
                "rdd", "car", "aod", "lmtest",
                "lfe", "nlme", "lme4",
                "erer", "margins", "multiwayvcov"
                "lubridate", "haven", "rddensity",
                "rdrobust", "ivpack", "readxl",
                "ggrepel", "multiwayvcov", "RSQLite", 
                "dbplyr", "devtools", "blogdown", 
                "rticles", "packrat", "here",
                "optparse", "rlist"
                )

install.packages(to_install)
```

* If you are asked if you want to install packages that need compilation, type `y` followed by `Return` to confirm this.
*   Wait until all the packages have been installed and the you are done.
    *   It *may* take a while, so be patient

Note that many dependencies get installed along the way.

We also want some packages to be installed from Github - these typically still under development:

```{r}
from_gh <- c("ddsjoberg/gtsummary", 
             "vincentarelbundock/modelsummary", 
             "rstudio/fontawesome", 
             "rstudio/gt",
             "rstudio/renv"
             )

devtools::install_github(from_gh)
```