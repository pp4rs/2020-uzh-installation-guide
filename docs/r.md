# R

R is a language for statistical computing and graphics.
R's use in the data science and econometrics community has taken off over recent years and (at a bare minimum) should be considered as an open source replacement to Stata.

## Installing R for Mac Users

Go to the [R homepage](https://cran.r-project.org/) and download the installer for your operating system.

The current version for Mac and Windows is `R version 3.6.2`.

Once you have installed R, [verify your install](#verifying-your-install-of-r-all-users).

!!! tip "Why Not Install via Homebrew?"
        There is conflicting views on Homebrew's installation of `R`.
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
