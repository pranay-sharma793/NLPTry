#!/bin/bash
pip install -r /kaggle/input/ropptdata/requirements.txt
#pip install -U pip setuptools wheel
#pip install -U spacy
python -m spacy download en_core_web_trf
