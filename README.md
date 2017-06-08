# oriole-lstm
Adit Deshpande's Oriole code on LSTMs

Eventually we'll need full step-by-step installation and configuration instructions here, like [these](https://github.com/jonbruner/Entailment-with-Tensorflow/blob/master/README.md)

Download and unzip the `models.tar.gz` and `training_data.tar.gz` tarballs into the same directory as `Oriole LSTM.ipynb` notebook before running the notebook.

Changes from Jon as of 3/27:
+ Revised code to work with Python 3.x as well as Python 2.7
  + Changed `print` to `print()` in every case
  + Replaced `str.translate()`, which works differently in 3.x vs 2.7, with a regex approach
+ Regenerated model based on new code
  + Made small changes to the model-load process
  + Renamed a few variables for consistency
