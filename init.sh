#!/usr/bin/env bash

conda install numpy pyyaml setuptools cmake cffi tqdm pyyaml scipy ipython mkl mkl-include cython typing h5py pandas nltk spacy numpydoc scikit-learn jpeg

pip install git+git://github.com/pytorch/vision.git@24577864e92b72f7066e1ed16e978e873e19d13d --user
pip install -r allennlp-requirements.txt --user
pip install --no-deps allennlp==0.8.0 --user
sudo /opt/conda/bin/python -m spacy download en_core_web_sm
# this one is optional but it should help make things faster
sudo /opt/conda/bin/pip uninstall pillow && CC="cc -mavx2" sudo pip install -U --force-reinstall pillow-simd --user

wget https://s3-us-west-2.amazonaws.com/ai2-rowanz/r2c/flagship_answer/best.th -P models/saves/flagship_answer/
wget https://s3-us-west-2.amazonaws.com/ai2-rowanz/r2c/flagship_rationale/best.th -P models/saves/flagship_rationale/

mkdir output