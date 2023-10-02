#!/usr/bin/env bash
echo "Installing Python Packages..."



curl https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-MacOSX-arm64.sh

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
