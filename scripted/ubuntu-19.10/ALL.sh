# PP4RS 2020 Linux Installation Guide
# Part 1: CLI, LaTex, Pandoc, R

echo "--- PP4RS 2020 CLI Installation Script Start"



echo "--- 1) Installing from apt (please confirm every prompt)"

sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'
sudo apt update 
sudo apt upgrade
sudo apt install libcurl4-gnutls-dev librtmp-dev texlive-latex-extra pandoc r-base  r-base-dev



echo "--- 2) Installing Python/Anaconda (please confirm every prompt)"

# download and install anaconda, then purge installation file
curl https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh -o conda.sh && bash conda.sh && rm conda.sh  

# initialize for zsh if used (also necessary for newer MacOS)
if test -f ~/.zshrc; then
    sed -n -e '/# >>> conda initialize/,/# <<< conda initialize/ p' ~/.bashrc >> ~/.zshrc
    echo "Added Anaconda to ~./zshrc"
fi

# python packages
pip install --upgrade pip
pip install linearmodels snakemake
# pip install selenium msgpack virtualenvwrapper



echo "--- 3) Installing RStudio"

curl https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.5042-amd64.deb -o RStudio.deb && sudo gdebi RStudio.deb && rm RStudio.deb

echo "Starting RStudio"
echo "Please execute the opened file (Ctrl+Shift+Enter). This might take a while."

rstudio 610-R-packages.R



echo "--- PP4RS 2020 CLI Installation Script Finished"
