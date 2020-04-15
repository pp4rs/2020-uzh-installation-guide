# PP4RS 2020 Linux Installation Guide
# Part 5: RStudio

echo "--- PP4RS 2020 RStudio Installation Script Start"

curl https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.5042-amd64.deb -o RStudio.deb && sudo gdebi RStudio.deb && rm RStudio.deb

echo "--- PP4RS 2020 RStudio Installation Script Finished"