FROM tensorflow/tensorflow:2.1.0-py3-jupyter

# set workdir
WORKDIR /tf/

# setup environment
ENV PYTHONPATH $PYTHONPATH:/tf/lib/

# upgrade pip
RUN pip install --upgrade pip

# install python3 packages
RUN pip install \
    'adversarial-robustness-toolbox==v1.3' \
    'mnist==v0.2.2' \
    'japanize-matplotlib==v1.1.2'
