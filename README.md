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

* **[TensorFlow](https://www.tensorflow.org/install/) version 1.1 (See below for later versions)**
* [NumPy](https://docs.scipy.org/doc/numpy/user/install.html)
* [Jupyter](https://jupyter.readthedocs.io/en/latest/install.html)
* [matplotlib](https://matplotlib.org/)

### TensorFlow 1.2 and later

In order to load the models without errors you need to convert the checkpoints using the converter provided by TensorFlow:

```bash
wget https://raw.githubusercontent.com/tensorflow/tensorflow/master/tensorflow/contrib/rnn/python/tools/checkpoint_convert.py
python checkpoint_convert.py models/pretrained_lstm.ckpt-90000 converted-checkpoints/pretrained_lstm-90000.ckpt
```
You should also replace the original models folder if you don't want to modify the code:
```bash
rm -rf models
mv converted-checkpoints models
```

### Docker
With Docker, you could just mount the repository and exec it.

1. Install Docker. Follow the [docker guide](https://docs.docker.com/get-started/#prepare-your-docker-environment).

2. Build docker image
    ``` bash
    cd LSTM-Sentiment-Analysis
    docker build -t="@yourname/tensorflow_1.1.0_py3" .
    ```

3. Run the container from the image
    ``` bash
    docker run -p 8888:8888 --name=tensorflow_yourname_py3 -v /@YourDir/LSTM-Sentiment-Analysis:/LSTM-Sentiment-Analysis -it @yourname/tensorflow_1.1.0_py3
    ```
    and visit the URL(http://localhost:8888/)

4. Stop and restart the container
    ``` bash
    docker stop tensorflow_yourname_py3
    docker start tensorflow_yourname_py3
    docker attach tensorflow_yourname_py3
    ```

    If jupyter is down, relaunch it by using the command below.
    ``` bash
    cd LSTM-Sentiment-Analysis
    jupyter notebook --ip=0.0.0.0 --allow-root
    ```

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
