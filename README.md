# RoPPT
This repo contains the code for reimplementing the the paper [Metaphor Detection with Effective Context Denoising](https://arxiv.org/abs/2302.05611). This reproducing is done using the open-source code provided by the authors [link to the original repo: https://github.com/MajiBear000/RoPPT]

## Requirements
* Python 3.7.7

## Data
The dataset used for this paper are well-known public English datasets. The VU Amsterdam Metaphor Corpus (VUA) has been released in metaphor detection shared tasks in 2018 and 2020, called **VUA-18** and **VUA-20**, where VUA-20 is the extension of VUA-18. Also, **MOH-X** and **TroFi** for zero-shot transfer learning experiment.

The raw and preprocessed data for re-producing is available at [link](https://drive.google.com/drive/folders/1JoVZlZQBbjBVVPmjtjfCveCZvIqVDgmq?usp=share_link).

## Reproducing steps:

Dataset setup: You may download the preprocessed data from the provided link and save them in a folder 'data/(VUA18/VUA20/VUA18/(MOH-X/CLS)/TroFi)'.

* Environment Set Up
```
sh env_setup.sh
```
* Data Preprocessing (Optional since we have the preprocessed data available)
```
sh parser.sh
```
* To excute and train the proposed model
```
sh scripts/run.sh
```
Alternately, you can use the below command
```
python main.py --data_dir data_sample/VUA --task_name sample --model_type MELBERT_GAT --class_weight 3 --bert_model roberta-base --num_train_epoch 3 --train_batch_size 8 --learning_rate 3e-5 --warmup_epoch 2 --dataset_name mohx

```
