# PP4RS 2020 Linux Installation Guide
# Part 2 Python

echo "--- PP4RS 2020 Python Installation Script Start"

# download and install anaconda, then purge installation file
curl https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh -o conda.sh && bash conda.sh && rm conda.sh  

# initialize for zsh if used (also necessary for newer MacOS)
if test -f ~/.zshrc; then
    sed -n -e '/# >>> conda initialize/,/# <<< conda initialize/ p' ~/.bashrc >> ~/.zshrc
    echo "Added Anaconda to ~./zshrc"
fi

pip install --upgrade pip
pip install linearmodels snakemake
# pip install selenium msgpack virtualenvwrapper

echo "--- PP4RS 2020 Python Installation Script Finished"