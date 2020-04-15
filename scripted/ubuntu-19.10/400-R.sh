# PP4RS 2020 Linux Installation Guide
# Part 4: R

echo "--- PP4RS 2020 R Installation Script Start"

sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'
sudo apt update
sudo apt install r-base  r-base-dev

echo "--- PP4RS 2020 R Installation Script Finished"