# to be executed in RStudio

# install packages from CRAN
from_CRAN <-c( "reshape", "rmarkdown",
                "plm", "Hmisc", "sandwich",
                "Ecdat", "stargazer", "knitr",
                "httr", "rvest", "xml2",
                "xtable","tidyverse", "AER",
                "rdd", "car", "aod", "lmtest",
                "lfe", "nlme", "lme4",
                "erer", "margins", "multiwayvcov",
                "lubridate", "haven", "rddensity",
                "rdrobust", "ivpack", "readxl",
                "ggrepel", "multiwayvcov", "RSQLite",
                "dbplyr", "devtools",
                "rticles", "here",
                "optparse", "rlist"
                )

install.packages(from_CRAN)

# install additional packages from Github
from_gh <- c("ddsjoberg/gtsummary",
             "vincentarelbundock/modelsummary",
             "rstudio/fontawesome",
             "rstudio/gt",
             "rstudio/renv"
             )

devtools::install_github(from_gh)

print("Installation finished.")