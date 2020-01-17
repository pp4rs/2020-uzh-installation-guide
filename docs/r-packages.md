# Additional R Packages

We will need some additional libraries to conduct our statistical analysis.

## All Users

Proceed as follows:

* Open RStudio
* In the **console**, copy and paste the following:

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
                "dbplyr", "devtools",
                "rticles", "here",
                "optparse", "rlist"
                )

install.packages(to_install)
```

* If you are asked if you want to install packages that need compilation, type `y` followed by `Return` to confirm this.
* Wait until all the packages have been installed and the you are done.
  * It *may* take a while, so be patient

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
