# PP4RS 2020 Linux Installation Guide
# Part 7: Extras

echo "--- PP4RS 2020 Extras Installation Script Start"

sudo apt install libgsl0-dev        # Gnu GSL library for faster scientific computing (ties into gcc for R) 
sudo apt install libopenblas-base   # multi-thread support for linear algebra computations

echo "Starting RStudio"
echo "Please execute the opened file (Ctrl+Shift+Enter)"

rstudio 710-extras.R

echo "--- PP4RS 2020 Extras Installation Script Finished"