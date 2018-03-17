# Tensorflow 1.1.0 for LSTM-Sentiment-Analysis

# Pull base image
FROM tensorflow/tensorflow:1.1.0-py3

MAINTAINER sean10 "sean10reborn@gmail.com"

RUN \
	rm /run_jupyter.sh && \
	echo "#!/bin/bash\n\
		cd /LSTM-Sentiment-Analysis\n\
		jupyter notebook --allow-root" >> /run_jupyter.sh && \
	chmod +x /run_jupyter.sh

WORKDIR "/LSTM-Sentiment-Analysis"

CMD ["/run_jupyter.sh"]
