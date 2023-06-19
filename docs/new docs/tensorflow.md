T81-558: Applications of Deep Neural Networks

Manual Python Setup

Instructor: Jeff Heaton, McKelvey School of Engineering, Washington University in St. Louis
For more information visit the class website.
Software Installation (Mac on Apple Metal M1)

This class is technically oriented. A successful student needs to be able to compile and execute Python code that makes use of TensorFlow for deep learning. There are two options for you to accomplish this:

Install Python, TensorFlow, and some IDE (Jupyter, TensorFlow, and others)
Use Google CoLab in the cloud
Installing Python and TensorFlow

Is your Mac Intel or Apple Metal (ARM)? The newer Mac ARM M1/M2/M3-based machines have considerably better deep learning support than their older Intel-based counterparts. Mac has not supported NVIDIA GPUs since 2016; however, the new M1/M2 chips offer similar capabilities that will allow you to run most of the code in this course. You can run any code not supported by the Apple M1 chip through Google CoLab, a free GPU-based Python environment.

If you are running an older Intel Mac, there still are some options. Refer to my Intel Mac installation guide.

With the introduction of the Apple silicone chip, Apple introduced a system on a chip. The new Mac M1 contains CPU, GPU, and deep learning hardware support, all on a single chip. The Mac M1 can run software created for the older Intel Mac's using an emulation layer called Rosetta.

Install Miniconda

It is possible to install and run Python/TensorFlow entirely from your Mac, without the need for Google CoLab. Running TensorFlow locally does require some software configuration and installation. If you are not comfortable with software installation, just use Google CoLab. These instructions show you how to install TensorFlow for both CPU and GPU. Many of the examples in this class will achieve considerable performance improvement from a GPU.

The first step is to install Python 3.10. As of January 2023, this is the latest version of Python 3. I recommend using the Miniconda (Anaconda) release of Python, as it already includes many of the data science related packages that are needed by this class. Anaconda directly supports Windows, Mac, and Linux. Miniconda is the minimal set of features from the extensive Anaconda Python distribution. Download Miniconda from the following URL:

Miniconda
Next, you should install the xcode-select command-line utilities. Use the following command to install:

xcode-select --install
If the above command gives an error, you should install XCode from the App Store.

Install Jupyter and Create Environment

Next, lets install Jupyter, which is the editor you will use in this course.

conda install -y jupyter
We will actually launch Jupyter later.

First, we deactivate the base environment.

conda deactivate
Next, we will install the Apple Silicon tensorflow-apple-metal.yml file that I provide. Run the following command from the same directory that contains tensorflow-apple-metal.yml.

conda env create -f tensorflow-apple-metal.yml -n tensorflow
Activating New Environment

To enter this environment, you must use the following command:

conda activate tensorflow
Register your Environment

The following command registers your tensorflow environment. Again, make sure you "conda activate" your new tensorflow environment.

python -m ipykernel install --user --name tensorflow --display-name "Python 3.10 (tensorflow)"
Testing your Environment

You can now start Jupyter notebook. Use the following command.

jupyter notebook
You can now run the following code to check that you have the versions expected.

# What version of Python do you have?
import sys

import tensorflow.keras
import pandas as pd
import sklearn as sk
import tensorflow as tf
import platform

print(f"Python Platform: {platform.platform()}")
print(f"Tensor Flow Version: {tf.__version__}")
print(f"Keras Version: {tensorflow.keras.__version__}")
print()
print(f"Python {sys.version}")
print(f"Pandas {pd.__version__}")
print(f"Scikit-Learn {sk.__version__}")
gpu = len(tf.config.list_physical_devices('GPU'))>0
print("GPU is", "available" if gpu else "NOT AVAILABLE")
Python Platform: macOS-13.0.1-arm64-arm-64bit
Tensor Flow Version: 2.11.0
Keras Version: 2.11.0

Python 3.10.8 | packaged by conda-forge | (main, Nov 22 2022, 08:25:29) [Clang 14.0.6 ]
Pandas 1.5.2
Scikit-Learn 1.2.0
GPU is available
