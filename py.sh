 #!/bin/sh
brew install anaconda
#Install Miniforge

cd "${HOME}"/installer.eq/pkgs && sh Miniforge3-MacOSX-arm64.sh
conda install -c apple tensorflow-deps
conda install -c conda-forge pybind11
conda install matplotlib
conda install jupyterlab
conda install seaborn
conda install opencv
conda install joblib
conda install pytables
pip install tensorflow-macos
pip install tensorflow-metal
pip install debugpy
pip install sklearn
