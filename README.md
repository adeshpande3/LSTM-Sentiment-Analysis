# Sentiment Analysis with LSTMs

This repository contains the iPython notebook and training data to accompany the [O'Reilly tutorial](https://www.oreilly.com/learning/perform-sentiment-analysis-with-lstms-using-tensorflow) on sentiment analysis with LSTMs in Tensorflow. See the original tutorial to run this code in a pre-built environment on O'Reilly's servers with cell-by-cell guidance, or run these files on your own machine. There is also another file called `Pre-Trained LSTM.ipynb` which allows you to input your own text, and see the output of the trained network. 

## Downloading Data
Before running the notebook, you'll first need to download all data we'll be using. This data is located in the `models.tar.gz` and `training_data.tar.gz` tarballs. We will extract these into the same directory as `Oriole LSTM.ipynb`. As always, the first step is to clone the repository.
   ```bash
   git clone https://github.com/adeshpande3/LSTM-Sentiment-Analysis.git
   ```
Next, we will navigate to the newly created directory and run the following commands. 
   ```bash
   tar -xvzf models.tar.gz
   tar -xvzf training_data.tar.gz
   ```

## Requirements and Installation
In order to run [the iPython notebook](Oriole-LSTM.ipynb), you'll need the following libraries. 

* **[TensorFlow](https://www.tensorflow.org/install/) version 1.1 (Currently not supported for 1.2, 1.3, 1.4 etc but if someone wants to submit a pull request, I'd be open to that :) )**
* [NumPy](https://docs.scipy.org/doc/numpy/user/install.html)
* [Jupyter](https://jupyter.readthedocs.io/en/latest/install.html)
* [matplotlib](https://matplotlib.org/)

### Installing Anaconda Python and TensorFlow
The easiest way to install TensorFlow as well as NumPy, Jupyter, and matplotlib is to start with the Anaconda Python distribution.

1. Follow the [installation instructions for Anaconda Python](https://www.continuum.io/downloads). **We recommend using Python 3.6.**

2. Follow the platform-specific [TensorFlow installation instructions](https://www.tensorflow.org/install/). Be sure to follow the "Installing with Anaconda" process, and create a Conda environment named `tensorflow`.

3. If you aren't still inside your Conda TensorFlow environment, enter it by opening your terminal and typing
    ```bash
    source activate tensorflow
    ```

4. If you haven't done so already, download and unzip [this entire repository from GitHub](https://github.com/adeshpande3/LSTM-Sentiment-Analysis), either interactively, or by entering
    ```bash
    git clone https://github.com/adeshpande3/LSTM-Sentiment-Analysis
    ```

5. Use `cd` to navigate into the top directory of the repo on your machine

6. Launch Jupyter by entering
    ```bash
    jupyter notebook
    ```
    and, using your browser, navigate to the URL shown in the terminal output (usually http://localhost:8888/)
